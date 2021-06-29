import gurobipy as gp
from gurobipy import *
import sys
import numpy

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

def is_float(val):
	try:
		num = float(val)
	except ValueError:
		return False
	return True

def is_int(val):
	try:
		num = int(val)
	except ValueError:
		return False
	return True

class Net_C:
	def __init__(self, name, ratio, default_cap):
		self.name = name
		self.ideal_ratio = ratio
		self.default_cap = default_cap
		self.vEdges = {} # { edgeName : edge }
		self.busEdges = {} # {} edgeName : edge }
		self.vEdgeNames = [] # [ edgeName ] 
		self.busEdgeNames = [] # [ edgeName ]
		self.Edges = {} # { edgeName : edge }
		self.EdgeNames = [] # [ edgeName ] 
		self.cost = 0.0
		self.total_cap = 0.0
		self.C_target = 0.0
		self.mismatch = 0.0
		self.edgeGroup = [] # [ [vM2,vM4,vM6], [busM1,busM3,busM5] ]
	def addEdge(self, edge):
		if edge.type == 'v':
			if edge.name in self.vEdges:
				self.vEdgeNames.append(edge.name)
			self.vEdges[edge.name] = edge
			
		elif edge.type == 'bus':
			if edge.name in self.busEdges:
				self.busEdgeNames.append(edge.name)
			self.busEdges[edge.name] = edge
		self.Edges[edge.name] = edge
		self.EdgeNames.append(edge.name)

class Couple_C:
	def __init__(self, baseEdgeName, coupEdgeName, coupCpara, sepEdges):
		self.baseEdgeName = baseEdgeName
		self.coupEdgeName = coupEdgeName
		self.Cpara = coupCpara*1e+18
		self.sepEdges = sepEdges # [sepEdges]

class Edge_C:
	def __init__(self, name, netName, coup0Cpara, edgeType):
		self.name = name
		self.type = edgeType # 'v' or 'bus'
		self.netName = netName
		self.coup0Cpara = coup0Cpara*1e+18
		if self.type == 'v':
			self.coup0Cpara = self.coup0Cpara/2
		self.couplingEdges = {} # { coupEdgeName : Couple_C}
	def addCoupEdge(self, coupEdgeName, couple):
		self.couplingEdges[coupEdgeName] = couple

nets = {} # {netName : Net_C}
net_couple_list = {} # {netName : [Couple_C]}
edges = {} # {edgeName : Edge_C}
couple_list = [] # [Couple_C]
couple_dict = {} # {edgeName : { edgeName : [Couple_C] } }
config = {} # {netNum:6, baseCap:'SL1B', alpha:0.3, beta:0.7}

## read Edges relation
file = open(sys.argv[1], 'r')
head = ""
lines = file.read().splitlines()
i = 0
while i < len(lines):
	line = lines[i]
	if line == "Config:":
		head = "read_config"
	elif line == "Nets:":
		head = "read_net"
	elif line == "Bus Wire:":
		head = "read_bus"
	elif line == "Virtical Wire:":
		head = "read_vWire"
	elif line == "Group Wire:":
		head = "read_groupEdge"
	################################################
	elif head == "read_config" and line != "": # read_config
		words = line.split()
		k = words[0]
		v = words[2]
		if is_int(v):
			v = int(v)
		elif is_float(v):
			v = float(v)
		config[k] = v
	elif head == "read_net" and line != "": # read_net
		words = line.split()
		net = Net_C(words[0],int(words[1]),float(words[2]))
		nets[net.name] = net
		net_couple_list[net.name] = []
	elif (head == "read_bus" or head == "read_vWire") and line != "": # read_bus / read_vWire
		# edge Cpara with substrate
		words = line.split()
		if words[0] == "substrate_Cpara:":
			netName = words[1]
			edgeName = words[2]
			coup0Cpara = float(words[3])
			if head == "read_bus":
				edge = Edge_C(edgeName, netName, coup0Cpara, 'bus')
				nets[netName].addEdge(edge)
				edges[edge.name] = edge
			else:
				edge = Edge_C(edgeName, netName, coup0Cpara, 'v')
				nets[netName].addEdge(edge)
				edges[edge.name] = edge
			i = i+1
			continue
		# coupling
		netName = words[0]
		edgeName = words[1]
		coupleEdgeName = words[2]
		coupCpara = float(words[3])
		edge = edges[edgeName]
		# sepEdges
		i = i+1
		line = lines[i]
		words = line.split()
		words.pop(0) # remove 'Seperated_by:'
		sepEdges = words
		couple = Couple_C(edgeName, coupleEdgeName, coupCpara, sepEdges)
		edge.addCoupEdge(coupleEdgeName,couple)
		# save the couple to data structure
		couple_list.append(couple)
		net_couple_list[netName].append(couple)
		if edgeName not in couple_dict:
			couple_dict[edgeName] = {}
		couple_dict[edgeName][coupleEdgeName] = couple
		# append to nets
		nets[netName].addEdge(edge)
		edges[edge.name] = edge
	elif head == "read_groupEdge" and line != "": # read_bus
		words = line.split()
		netName = words.pop(0)
		groupEdge = words
		nets[netName].edgeGroup.append(groupEdge)

	i = i+1

print("config :")
print(config)

## ilp
#try:
# Create a new model
m = gp.Model()

# Create variables
#net_EdgeVar = {} # { netName : {edgeName:edgeVar} }
edgeVar = {} # { edgeName : edgeVar }
netCrealVar = {} # { netName : CparaVar }
sepEVar = {} # {edgeName : { edgeName : [sepEdgeVars] } }
coupleVar_dict = {} # {edgeName : { edgeName : [couplaVars] } }
coupleVar_list = [] # [couplaVar]
net_coupleVar = {} # {netName : [coupleVar]}
for (netName, net) in nets.items():
	net_coupleVar[netName] = []
	#net_EdgeVar[net.name] = {}
	for edgeName,edge in net.Edges.items():
		sepEVar[edgeName] = {}
		coupleVar_dict[edgeName] = {}
		# edgeVar
		e_gp = m.addVar(vtype=GRB.BINARY, name=edgeName)
		edgeVar[edgeName] = e_gp
		#net_EdgeVar[net.name][edgeName] = e
		# netCreal
		nCreal_gp = m.addVar(vtype=GRB.CONTINUOUS, name=netName)
		netCrealVar[netName] = nCreal_gp
		# netCouple
		for coupleE,couple in edge.couplingEdges.items():
			c_gp = m.addVar(vtype=GRB.CONTINUOUS, name=edgeName + "__" + couple.coupEdgeName)
			coupleVar_list.append(c_gp)
			coupleVar_dict[edgeName][couple.coupEdgeName] = c_gp
			net_coupleVar[netName].append(c_gp)
for couple in couple_list:
	sepEVar[couple.baseEdgeName][couple.coupEdgeName] = []
	for sepE in couple.sepEdges:
		sepEVar[couple.baseEdgeName][couple.coupEdgeName].append(edgeVar[sepE])
	


# Integrate new variables
m.update()

# set the summary of variable
expr_netCpara = [] # { net : [expr_c]}
for (netName, net) in nets.items():
	expr_netCpara.append(
		gp.quicksum(
			coupleVar_dict[couple.baseEdgeName][couple.coupEdgeName] * couple.Cpara + edgeVar[couple.baseEdgeName] * edges[couple.baseEdgeName].coup0Cpara# gp.and_(sepEVar[edgeName][coupleE])
		# gp.and_(sepEVar[couple.baseEdgeName][couple.coupEdgeName], edgeVar[couple.baseEdgeName], edgeVar[couple.coupEdgeName])
		for couple in net_couple_list[netName])
	)
		#for (coupleE,couple) in edge.couplingEdges.items():
			#andList = sepEVar[edgeName][coupleE] + [edgeVar[edgeName], edgeVar[coupleE]]
# Set objective
m.setObjective(
	# config['alpha'] * gp.quicksum( # total Cpara
	# 	edgeVar[_couple.baseEdgeName] * edgeVar[_couple.coupEdgeName] * float(_couple.Cpara) + edgeVar[_couple.baseEdgeName] * edges[_couple.baseEdgeName].coup0Cpara  # * all(edgeVar[_sepE] == 0  for _sepE in _couple.sepEdges)
	# for _couple in couple_list)
	gp.quicksum( # total Cpara
		expr_netCpara[i]
	for i in range(len(expr_netCpara)))
	# + config['beta'] * (
	# 	gp.quicksum( # mismatch of net
	# 		gp.abs_(gp.quicksum( # total Cpara of net
	# 			edgeVar[_couple.baseEdgeName] * edgeVar[_couple.coupEdgeName] * float(_couple.Cpara) + edgeVar[_couple.baseEdgeName] * edges[_couple.baseEdgeName].coup0Cpara  # * all(edgeVar[_sepE] == 0  for _sepE in _couple.sepEdges)
	# 		for _edgeName,_edge in _net.Edges.items() for (_coupleE,_couple) in _edge.couplingEdges.items())
	# 		- gp.quicksum( # total Cpara of baseNet
	# 			edgeVar[_couple.baseEdgeName] * edgeVar[_couple.coupEdgeName] * float(_couple.Cpara) + edgeVar[_couple.baseEdgeName] * edges[_couple.baseEdgeName].coup0Cpara  # * all(edgeVar[_sepE] == 0  for _sepE in _couple.sepEdges)
	# 		for _edgeName,_edge in nets[config['baseNet']].Edges.items() for (_coupleE,_couple) in _edge.couplingEdges.items()))
	# 	for (_netName,_net) in nets.items())
	# )
	, GRB.MINIMIZE) # min: a*SUM(Cpara) + b*SUM(Ratio_Mismatch)

# Add constraint: connectivity
count_constr = 0
for (netName, net) in nets.items():
	for group in net.edgeGroup:
		constrName = "c" + str(count_constr)
		m.addConstr(gp.quicksum(edgeVar[edgeName] for edgeName in group) >= 1, constrName) # var1 + var2 + var3 + ... >= 1
		count_constr = count_constr+1
# Add constraint: to check the Cpara is exist for each couple
	for (edgeName,edge) in net.Edges.items():
	 	for (coupleE,couple) in edge.couplingEdges.items():
	 		m.addConstr(coupleVar_dict[edgeName][coupleE] == gp.and_(sepEVar[edgeName][coupleE], edgeVar[edgeName], edgeVar[coupleE]))
'''for i in range(len(coupleList_withVar)):
	couple = coupleList_withVar[i]
	couple_var = coupleVar[i]
	# if sum(sepEVar[couple.baseEdgeName][couple.coupEdgeName]) == 0
	m.addConstr(
		couple_var == edgeVar[couple.baseEdgeName] * edgeVar[couple.coupEdgeName] * float(couple.Cpara) + edgeVar[couple.baseEdgeName] * edges[couple.baseEdgeName].coup0Cpara 
	if qp.quicksum(sepEVar[couple.baseEdgeName][couple.coupEdgeName])==0 , constrName)
	count_constr = count_constr+1
	# else
	m.addConstr(
		couple_var == 0 
	if qp.quicksum(sepEVar[couple.baseEdgeName][couple.coupEdgeName])>0, constrName)
	count_constr = count_constr+1
	
	# Add constraint: to compute the Cpara for each net
'''
# lLP optimization
m.optimize()

print(bcolors.OKBLUE, "[ILP] finsih -- Obj:", m.objVal, bcolors.ENDC)
file_out = open(sys.argv[1] + ".out", 'w')
file_out.write("[ILP] finsih -- Obj:{}\n".format(m.objVal))
for v in m.getVars():
	#print(v.varName, v.x)
	file_out.write("{} {}\n".format(v.varName,v.x))

#except gp.GurobiError as e:
#	print('[Error reported] - ' + str(e.errno) + ': ' + str(e))
#except AttributeError:
	#print('Encountered an attribute error')