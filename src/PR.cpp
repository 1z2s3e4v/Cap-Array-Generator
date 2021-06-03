#include "PR.h"
#include "data.h"
bool le(float a, float b){
    int n_a = a*1000;
    int n_b = b*1000;
    return (n_a - n_b) < 0;
}
bool ge(float a, float b){
    int n_a = a*1000;
    int n_b = b*1000;
    return (n_a - n_b) > 0;
}
bool eq(float a, float b){
    int n_a = round(a*1000.0);
    int n_b = round(b*1000.0);
    return abs(n_a - n_b) < 5;
}
float rouding(float f){
    return (double)round(f / .001) * 0.001;
}
bool cmNode_x(const Node_C* n1, const Node_C* n2){
    return get<0>(n1->xy) < get<0>(n2->xy);
}
bool cmpGraph_ratio(const Graph_C* g1, const Graph_C* g2){
    return g1->net->capRatio > g2->net->capRatio;
}
// ---------------------------------------------------------------------------------------------------------
Cpara_C::Cpara_C(){}
Cpara_C::Cpara_C(Edge_C* edge, Edge_C* edge2){
    this->edge = edge;
    this->edge2 = edge2;
    cap = calculate_parasitic();
}
int Cpara_C::getCouplingType(){
    if(edge->wire.dir == 'H' && edge2->wire.dir == 'H' && get<1>(edge->wire.p1)!=get<1>(edge2->wire.p1)){ // H
        return 1;
    }
    else if(edge->wire.dir == 'V' && edge2->wire.dir == 'V' && get<0>(edge->wire.p1)!=get<0>(edge2->wire.p1)){ // V
        return 2;
    }
    else{ // overlap
        return 3;
    }
}
float Cpara_C::calculate_parasitic(){
    float cap = -1;
    int coupling_type = getCouplingType();
    bBox b1 = edge->wire.getBox();
    bBox b2 = edge2->wire.getBox();
    float spacing = 0;
    float parallel = 0;
    if(coupling_type == 1){// H
        if(get<1>(edge->wire.p1) < get<1>(edge2->wire.p1)){ 
            swap(b1,b2); // edge is upper, edge2 is lower
        }
        spacing = rouding(get<1>(get<0>(b1)) - get<1>(get<1>(b2)));
        parallel = rouding(min(get<0>(edge->wire.p2),get<0>(edge2->wire.p2)) - max(get<0>(edge->wire.p1),get<0>(edge2->wire.p1)));
        
        // Each routing-style and corresponding parasitic-cap
        if(parallel < 0) { // not parallel
            cap = -1;
        }
        else if(eq(spacing,0.0)){ // spacing 0
            // TODO

        }
        else if(eq(spacing,0.06)){ // spacing 0.06
            // TODO
            if(isLayer(1,1)){ // M1 M1
                cap = 6.2e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(1,3)){ // M1 M3
                cap = 3.0e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(3,3)){ // M3 M3
                cap = 5.5e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(3,5)){ // M3 M5
                cap = 2.8e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(5,5)){ // M5 M5
                cap = 5.5e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(1,5)){ // M1 M5
                cap = 1.5e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else{

            }
        }
        else if(eq(spacing,0.11)){ // spacing 0.11
            if(isLayer(1,1)){ // M1 M1
                cap = 5.8e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(1,3)){ // M1 M3
                // TODO
                cap = 2.5e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(3,3)){ // M3 M3
                cap = 4.3e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(3,5)){ // M3 M5
                cap = 2.1e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(5,5)){ // M5 M5
                cap = 4.2e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(1,5)){ // M1 M5
                cap = 1.0e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else{

            }
        }
        else if(eq(spacing,0.22)){ // spacing 0.22
            if(isLayer(1,1)){ // M1 M1
                cap = 3.5e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.05e-17;
                }
            }
            else if(isLayer(1,3)){ // M1 M3
                // TODO
                cap = 1.5e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.05e-17;
                }
            }
            else{

            }
        }
        else if(eq(spacing,0.23)){ // spacing 0.23
            // TODO
            if(isLayer(1,1)){ // M1 M1
                cap = 3.2e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(1,3)){ // M1 M3
                cap = 1.2e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(3,3)){ // M3 M3
                cap = 2.8e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(3,5)){ // M3 M5
                cap = 1.0e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(5,5)){ // M5 M5
                cap = 2.8e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(1,5)){ // M1 M5
                cap = 0.8e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.05e-17;
                }
            }
            else{

            }
        }
        else if(eq(spacing,0.33)){ // spacing 0.33
            // TODO
            if(isLayer(1,1)){ // M1 M1
                cap = 3.1e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(1,3)){ // M1 M3
                cap = 1.15e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(3,3)){ // M3 M3
                cap = 2.7e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(3,5)){ // M3 M5
                cap = 0.95e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(5,5)){ // M5 M5
                cap = 2.7e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(1,5)){ // M1 M5
                cap = 0.75e-17 * parallel;
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.05e-17;
                }
            }
            else{

            }
        }
        else if(spacing > 0.52){
            cap = 0;
        }

    }
    else if(coupling_type == 2){ // V
        if(get<0>(edge->wire.p1) > get<0>(edge2->wire.p1)){ 
            swap(b1,b2); // edge is upper, edge2 is lower
        }
        spacing = rouding(get<0>(get<0>(b2)) - get<0>(get<1>(b1)));
        parallel = rouding(min(get<1>(edge->wire.p2),get<1>(edge2->wire.p2)) - max(get<1>(edge->wire.p1),get<1>(edge2->wire.p1)));
        
        // Each routing-style and corresponding parasitic-cap
        if(parallel < 0) { // not parallel
            cap = -1;
        }
        else if(eq(spacing,0.1)){ // spacing 0.1
            if(isLayer(2,2)){ // M2 M2
                cap = 5.0e-17 * parallel;
                if(get<1>(edge->wire.p2) != get<1>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(2,4)){ // M2 M4
                cap = 1.5e-17 * parallel;
                if(get<1>(edge->wire.p2) != get<1>(edge2->wire.p2)){
                    cap += 0.05e-17;
                }
            }
            else if(isLayer(4,4)){ // M4 M4
                // TODO
                cap = 4.2e-17 * parallel;
                if(get<1>(edge->wire.p2) != get<1>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(4,6)){ // M4 M6
                cap = 0.5e-17 * parallel;
            }
            else if(isLayer(6,6)){ // M6 M6
                cap = 1.5e-17 * parallel;
            }
            else if(isLayer(2,6)){ // M2 M6
                cap = 0 * parallel;
            }
            else{

            }
        }
        else if(eq(spacing,0.31)){ // spacing 0.31
            // TODO
            if(isLayer(2,2)){ // M2 M2
                cap = 2.0e-17 * parallel;
            }
            else if(isLayer(2,4)){ // M2 M4
                cap = 0.5e-17 * parallel;
            }
            else if(isLayer(4,4)){ // M4 M4
                cap = 1.5e-17 * parallel;
            }
            else if(isLayer(4,6)){ // M4 M6
                cap = 0.5e-17 * parallel;
            }
            else if(isLayer(6,6)){ // M6 M6
                cap = 1.5e-17 * parallel;
            }
            else if(isLayer(2,6)){ // M2 M6
                cap = 0 * parallel;
            }
        }
        else if(eq(spacing,0.52)){ // spacing 0.52
            // TODO
            if(isLayer(2,2)){ // M2 M2
                cap = 1.0e-17 * parallel;
            }
            else if(isLayer(4,4)){ // M4 M4
                cap = 0.8e-17 * parallel;
            }
            else if(isLayer(6,6)){ // M6 M6
                cap = 0.8e-17 * parallel;
            }
            else{

            }
        }
        else if(spacing > 0.52){
            // TODO
            cap = 0;
        }
        else{
            
        }
    }
    else if(coupling_type == 3){ // overlap

    }
    if(cap >= 0){
        /*
        cout << "[Cpara_C] - Success. Calculate the parasitic successfully.\n";
        cout << "  Edge1: \"" << edge->graph->name << "\"(M" << edge->wire.layer << "): p1=" << pos2str(edge->wire.p1) << ", p2=" << pos2str(edge->wire.p2) << "\n";
        cout << "  Edge2: \"" << edge2->graph->name << "\"(M" << edge2->wire.layer << "): p1=" << pos2str(edge2->wire.p1) << ", p2=" << pos2str(edge2->wire.p2) << "\n";
        cout << "  Spacing=" << spacing << ", Parallel=" << parallel << ", Capacitance=" << cap << "\n";
        */
        return cap;
    }
    else if(parallel >= 0){
        cout << "[Cpara_C] - Warning. Cannot calculate the parasitic.\n";
        cout << "  Edge1: \"" << edge->graph->name << "\"(M" << edge->wire.layer << "): p1=" << pos2str(edge->wire.p1) << ", p2=" << pos2str(edge->wire.p2) << "\n";
        cout << "  Edge2: \"" << edge2->graph->name << "\"(M" << edge2->wire.layer << "): p1=" << pos2str(edge2->wire.p1) << ", p2=" << pos2str(edge2->wire.p2) << "\n";
        cout << "  Spacing=" << spacing << ", Parallel=" << parallel << "\n";
        return 0.0;
    }
    else{
        return 0.0;
    }
}
Edge_C* Cpara_C::getCouplingEdge(string netName){
    if(netName == edge->graph->name){
        return edge2;
    }
    else return edge;
}
bool Cpara_C::isLayer(int layer1,int layer2){
    return ((edge->wire.layer==layer1 && edge2->wire.layer==layer2) || (edge->wire.layer==layer2 && edge2->wire.layer==layer1));
}
// ---------------------------------------------------------------------------------------------------------
Graph_C::Graph_C(){}
Graph_C::Graph_C(Net_C* p_net){
    net = p_net;
    name = net->name;
}
void Graph_C::addNode(Node_C* p_node){
    v_node.push_back(p_node);
    if(p_node->isIOPin()){
        ioPinNode = p_node;
    }
}
void Graph_C::addEdge(Edge_C* p_edge){
    v_edge.push_back(p_edge);
}
void Graph_C::setConnectivity(){
    for(Node_C* node : v_node){
        if(!node->isIOPin()){
            Edge_C* edge = new Edge_C(ioPinNode,node,0.02);
            addEdge(edge);
            edge->setGraph(this);
        }
    }
}
void Graph_C::setWires2Net(){
    net->initWire();
    for(Edge_C* edge : v_edge){
        net->addWire(edge->wire);
    }
}
bool Graph_C::isNodeExist(Pos3d pos){

}
float Graph_C::getBusY(){
    return get<1>(ioPinNode->getXY());
}
void Graph_C::addCpara(Cpara_C * Cpara){
    v_Cpara.push_back(Cpara);
    totalCap += Cpara->cap;

    // set net Cpara map
    string couplingNetName = Cpara->getCouplingEdge(name)->graph->name;
    net->m_net2netCpara[couplingNetName] += Cpara->cap;
}
// ---------------------------------------------------------------------------------------------------------
Node_C::Node_C(){
    pin = nullptr;
    _isPin = false;
    _isIOPin = false;
}
Node_C::Node_C(Pos3d p_pos){
    pin = nullptr;
    _isPin = false;
    _isIOPin = false;
    setPos(p_pos);
}
Node_C::Node_C(Pos p_pos, int layer){
    pin = nullptr;
    _isPin = false;
    _isIOPin = false;
    setPos(p_pos,layer);
}
Node_C::Node_C(Pin_C* p_pin){
    pin = p_pin;
    _isPin = true;
    if(pin->isIOPin()){
        _isIOPin = true;
    }
    setPos(pin->xy,pin->layer);
}
void Node_C::addEdge(Edge_C* p_edge){
    v_edge.push_back(p_edge);
}
void Node_C::setGraph(Graph_C* p_graph){
    graph = p_graph;
}
void Node_C::setPos(Pos3d p_pos){
    xy = Pos(get<0>(p_pos),get<1>(p_pos));
    layer = get<2>(p_pos);
    xyz = p_pos;
}
void Node_C::setPos(Pos p_pos, int p_layer){
    xy = p_pos;
    layer = p_layer;
    xyz = Pos3d(get<0>(xy),get<1>(xy),layer);
}
Pos Node_C::getXY(){
    return xy;
}
Pos3d Node_C::getXYZ(){
    return xyz;
}
// ---------------------------------------------------------------------------------------------------------
Edge_C::Edge_C(){}
Edge_C::Edge_C(Node_C* s, Node_C* t){
    v_node.push_back(s);
    v_node.push_back(t);
    src = s;
    tgt = t;
    wire = Wire_C(src->getXY(),tgt->getXY());
}
Edge_C::Edge_C(Node_C* s, Node_C* t, float w){
    v_node.push_back(s);
    v_node.push_back(t);
    src = s;
    tgt = t;
    wire = Wire_C(src->getXY(),tgt->getXY(), w);
}
Edge_C::Edge_C(Node_C* ioPin){
    v_node.push_back(ioPin);
    src = ioPin;
    tgt = ioPin;
    wire = Wire_C(src->getXY(),tgt->getXY());
}
void Edge_C::addNode(Node_C* p_node){
    v_node.push_back(p_node);
    pair<float,Node_C*> new_src = pair<float,Node_C*>(9999.0,nullptr); // min_x, node
    pair<float,Node_C*> new_tgt = pair<float,Node_C*>(-9999.0,nullptr); // max_x, node
    for(Node_C* node : v_node){
        if(get<0>(node->xy) < new_src.first){
            new_src.first = get<0>(node->xy);
            new_src.second = node;
        }
        if(get<0>(node->xy) > new_tgt.first){
            new_tgt.first = get<0>(node->xy);
            new_tgt.second = node;
        }
    }

    src = new_src.second;
    tgt = new_tgt.second;
    wire.setPoint(src->xy,tgt->xy);
}
void Edge_C::setGraph(Graph_C* p_graph){
    graph = p_graph;
}
void Edge_C::setLayer(int layer){
    wire.layer = layer;
}
// ---------------------------------------------------------------------------------------------------------
PRMgr_C::PRMgr_C(){}
PRMgr_C::PRMgr_C(vector<Net_C*> pv_Net){
    v_finCap.clear();
    v_net = pv_Net;
    for(auto net : v_net){
        addPin(net->IOpin);
        if(net->isCapNet()){
            v_CapNet.push_back(net);
        }
        for(auto finCap : net->v_finCap){
            addPin(finCap->topPin);
            addPin(finCap->btmPin);
            v_finCap.push_back(finCap);
        }
    }
}
void PRMgr_C::setDmyFinCap(vector<FinCap_C*> pv_dmtFinCap){
    v_dmyFinCap = pv_dmtFinCap;
    for(auto finCap : v_dmyFinCap){
        v_finCap.push_back(finCap);
        addPin(finCap->topPin);
        addPin(finCap->btmPin);
    }
}
void PRMgr_C::addPin(Pin_C* pin){
    if(m_pin.find(pin->name) == m_pin.end()){
        vector<Pin_C*> v_empty;
        m_pin.emplace(pin->name,v_empty);
    }
    m_pin[pin->name].push_back(pin);
    if(pin->isIOPin()){
        v_ioPin.push_back(pin);
    }
}
void PRMgr_C::run(){
    run_placement();
    run_routing();
}
// --------------------------- placement --------------------------- // 
void PRMgr_C::run_placement(){
    set_order_PI();
    place_finCap();
    place_ioPin(); // init_location
    //print_info();
}
void PRMgr_C::set_order_PI(){
    v_finCap.clear();
    v_finCap = v_dmyFinCap; // put dummyCap first (at the two side)
    //// sort net with # of finCap (more to less)
    sort(v_CapNet.begin(),v_CapNet.end(),[](Net_C* n1, Net_C* n2){ return n1->num_finCap > n2->num_finCap; });
    for(auto net : v_CapNet){
        for(auto cap : net->v_finCap){
            int mid = v_finCap.size()/2;
            v_finCap.insert(v_finCap.begin()+mid,cap);
        }
    }
    for(int i=0;i<v_finCap.size();++i){
        v_finCap[i]->id = i;
    }
}
void PRMgr_C::place_finCap(){
    for(int i=0;i<v_finCap.size();++i){
        FinCap_C* finCap = v_finCap[i];
        if(i == 0){
            finCap->setXY(Pos(CAP_START_X, CAP_START_Y));
        }
        else{
            float spacing = (v_finCap[i-1]->topPin->name == finCap->topPin->name)? CAP_SPACING_1 : CAP_SPACING_2;
            finCap->setXY(Pos(get<0>(v_finCap[i-1]->xy) + spacing, CAP_START_Y));
        }
    }
}
void PRMgr_C::place_ioPin(){
    for(int i=v_CapNet.size()-1;i>=0;--i){ // capNet
        if(i == v_CapNet.size()-1){ // first
            v_CapNet[i]->IOpin->setXY(Pos(BUS_START_X, BUS_START_Y));
        }
        else{
            v_CapNet[i]->IOpin->setXY(Pos(BUS_START_X, get<1>(v_CapNet[i+1]->IOpin->xy) - WIRE_WIDTH - WIRE_MIN_SPACING));
        }
    }
    int count_no_net_ioPin = 0;
    for(int i=0;i<v_ioPin.size();++i){
        Pin_C* ioPin = v_ioPin[i];
        if(ioPin->net->isCapNet()) continue;
        // place the rest ioPin
        bool findBestPos = false;
        Pos bestPos;
        for(FinCap_C* finCap : v_finCap){
            if(finCap->btmPin->name == ioPin->name){
                bestPos = finCap->btmPin->xy;
                findBestPos = true;
                break;
            }
            else if(finCap->topPin->name == ioPin->name){
                bestPos = finCap->topPin->xy;
                findBestPos = true;
                break;
            }
        }

        if(!findBestPos){
            bestPos = Pos(BUS_START_X - 2*CAP_SPACING_2, BUS_START_Y - (count_no_net_ioPin*(WIRE_WIDTH+WIRE_MIN_SPACING)));
            count_no_net_ioPin++;
        }
        
        ioPin->setXY(bestPos);
    }
}
// --------------------------- routing --------------------------- // 
void PRMgr_C::run_routing(){
    // 0. build the graph and connectivity
    build_graph();
    // 1. create steiner point on bus
    // 2. connect as 2d
    build_2d_connection();
    // 3. layer assignment
    layer_assignment();
    // 4. calculate the parasitic
    calculate_cap();
    print_cap_info();
    // 5. coupling route (Considering Cpara-matching)
    // 5-1. shift wire
    wire_shifting();
    // 5-2. layer reassignent
    vlayer_reAssignment();

    set_wire(); // set edges back to net->v_wire
}
void PRMgr_C::build_graph(){
    v_capTopNode.clear();
    v_capBtmNode.clear();
    for(auto net : v_net){
        Graph_C* graph_2d = new Graph_C(net);
        for(auto pin : m_pin[net->name]){
            Node_C* node = new Node_C(pin);
            m_p2n.emplace(pin,node);
            graph_2d->addNode(node);
            node->setGraph(graph_2d);
            if(!pin->isIOPin()){
                if(pin->isTopPin()){
                    v_capTopNode.push_back(node);
                }
                if(pin->isBtmPin()){
                    v_capBtmNode.push_back(node);
                }
            }
        }
        m_graph2D.emplace(net->name, graph_2d);
        if(net->isCapNet()){
            v_capGraph.push_back(graph_2d);
        }
        
        // Create edge for print the connectivity
        //graph_2d->setConnectivity();
        //graph_2d->setWires2Net();
    }
    //sort(v_capGraph.begin(),v_capGraph.end(),cmpGraph_ratio);
}
void PRMgr_C::build_2d_connection(){
    v_bus.clear();
    v_vWire.clear();
    v_otherWire.clear();
    for(auto it : m_graph2D){
        string netName = it.first;
        Graph_C* graph = it.second;
        graph->bus = new Edge_C(graph->ioPinNode);
        graph->addEdge(graph->bus);
        graph->bus->setGraph(graph);
        addBus(graph->bus);
        sort_node_with_x(graph->v_node);
        for(int i=0;i<graph->v_node.size();++i){
            Node_C* node = graph->v_node[i];
            if(node->isPin() && !node->isIOPin()){
                Node_C* steiner_point;
                bool connect_neibor = false;
                int fcap_id = node->pin->fcap->id;
                if(fcap_id < v_finCap.size()/2){
                    if(fcap_id > 0){
                        // connect to neibor (left <--)
                        if(node->pin->isBtmPin() && v_finCap[fcap_id-1]->btmPin->name == node->pin->name){
                            // btmPin
                            steiner_point = m_p2n[v_finCap[fcap_id-1]->btmPin];
                            connect_neibor = true;
                        }
                        else if(node->pin->isTopPin() && v_finCap[fcap_id-1]->topPin->name == node->pin->name){
                            // topPin
                            steiner_point = m_p2n[v_finCap[fcap_id-1]->topPin];
                            connect_neibor = true;
                        }
                    }
                }
                else{
                    if(fcap_id < v_finCap.size()-1){
                        // connect to neibor (--> right)
                        if(node->pin->isBtmPin() && v_finCap[fcap_id+1]->btmPin->name == node->pin->name){
                            // btmPin
                            steiner_point = m_p2n[v_finCap[fcap_id+1]->btmPin];
                            connect_neibor = true;
                        }
                        else if(node->pin->isTopPin() && v_finCap[fcap_id+1]->topPin->name == node->pin->name){
                            // topPin
                            steiner_point = m_p2n[v_finCap[fcap_id+1]->topPin];
                            connect_neibor = true;
                        }
                    }
                }

                if(!connect_neibor){
                    steiner_point = new Node_C(Pos(get<0>(node->xy),m_graph2D[netName]->getBusY()),node->layer);
                    steiner_point->setGraph(graph);
                    graph->bus->addNode(steiner_point);
                }
                Edge_C* edge = new Edge_C(node,steiner_point);
                graph->addEdge(edge);
                edge->setGraph(graph);
                if(!connect_neibor && graph->net->isCapNet()){
                    addVWire(edge); // virtical wire
                }
                else{
                    addOtherWire(edge);
                }
            }
        }
    }
}
void PRMgr_C::layer_assignment(){
    int hLayer[3] = {1, 3, 5};
    int vLayer[3] = {2, 4, 6};
    int count_bus = 0;
    for(Edge_C* bus : v_bus){ // set the layer of bus
        if(bus->graph->name.substr(0,3) == "TOP" || bus->graph->name.substr(0,3) == "VDD" || bus->graph->name.substr(0,3) == "VSS"){
            bus->setLayer(hLayer[0]); // Metal1
        }
        else{
            bus->setLayer(hLayer[count_bus%2 +1]);
            count_bus++;
        }
    }
    int count_vWire = 0;
    for(Edge_C* vWire : v_vWire){ // set the layer of vWires
        if(vWire->graph->name.substr(0,3) == "TOP" || vWire->graph->name.substr(0,3) == "VDD" || vWire->graph->name.substr(0,3) == "VSS"){
            vWire->setLayer(vLayer[0]); // Metal2
        }
        else{
            vWire->setLayer(vLayer[count_vWire%2 +1]);
            count_vWire++;
        }
    }
    for(Edge_C* edge : v_otherWire){ // set the layer of rest wires
        if(edge->wire.dir == 'H')
            edge->setLayer(hLayer[1]); // Metal3
        else if(edge->wire.dir == 'V')
            edge->setLayer(vLayer[0]); // Metal2
    }
    cout << "\033[94m[PR]\033[0m - Setting layout with lowest Cpara.\n";
}
void PRMgr_C::calculate_cap(){
    for(auto it : m_graph2D){
        Graph_C* graph = it.second;
        if(!graph->net->isCapNet()) continue;
        // init cap
        graph->v_Cpara.clear();
        // unit_cap
        graph->totalUnitCap = graph->net->num_finCap*UNIT_CAP;
        graph->totalCap += graph->totalUnitCap;
    }
    // parasitic_cap
    for(int i=0;i<v_bus.size();++i){ // bus coupling
        Edge_C* edge = v_bus[i];
        if(!edge->graph->net->isCapNet()) continue;
        map<int,Edge_C*> couplingEdge;
        for(int j=i+1;j<v_bus.size();++j){
            if(edge->graph->name == v_bus[j]->graph->name) continue;
            if(couplingEdge.find(v_bus[j]->wire.layer) == couplingEdge.end()){
                couplingEdge.emplace(v_bus[j]->wire.layer,v_bus[j]);
            }
        }
        for(auto it : couplingEdge){
            Cpara_C* Cpara = new Cpara_C(edge,it.second);
            edge->graph->addCpara(Cpara);
            it.second->graph->addCpara(Cpara);
        }
    }
    for(int i=0;i<v_vWire.size();++i){ // virtical wire coupling
        Edge_C* edge = v_vWire[i];
        if(!edge->graph->net->isCapNet()) continue;
        map<int,Edge_C*> couplingEdge;
        for(int j=i+1;j<v_vWire.size();++j){
            if(edge->graph->name == v_vWire[j]->graph->name) continue;
            if(couplingEdge.find(v_vWire[j]->wire.layer) == couplingEdge.end()){
                couplingEdge.emplace(v_vWire[j]->wire.layer,v_vWire[j]);
            }
        }
        for(auto it : couplingEdge){
            Cpara_C* Cpara = new Cpara_C(edge,it.second);
            edge->graph->addCpara(Cpara);
            it.second->graph->addCpara(Cpara);
        }
    }
}
void PRMgr_C::print_cap_info(){
    Graph_C* unitCapGraph = getSmallestCap();
    float unitCap = unitCapGraph->totalCap / (float)unitCapGraph->net->capRatio;

    float max_mismatch = -1;
    float avg_mismatch= 0;

    cout << setprecision(3);
    cout << "\033[94m[PR]\033[0m - Cap Info:\n";
    for(Graph_C* graph : v_capGraph){
        cout << "  " << graph->net->name << "(" << graph->net->capRatio << "): ratio=" << graph->totalCap/unitCap << ", cap=" <<  graph->totalCap << "\n";
        float mismatch = abs(graph->totalCap - unitCap*graph->net->capRatio) / (unitCap*graph->net->capRatio);
        if(mismatch > max_mismatch){
            max_mismatch = mismatch;
        }
        avg_mismatch += mismatch;
    }
    avg_mismatch /= v_capGraph.size();
    cout << "\033[94m[PR]\033[0m - mismatch = " << max_mismatch*100 << "% (avg=" << avg_mismatch*100 << "%)\n";
}
void PRMgr_C::wire_shifting(){
    /*int hLayer[3] = {1, 5, 3};
    int vLayer[2] = {2, 4};
    int count_vWire = 0;
    for(Edge_C* vWire : v_vWire){ // set the layer of vWires
        if(vWire->graph->name.substr(0,3) == "TOP" || vWire->graph->name.substr(0,3) == "VDD" || vWire->graph->name.substr(0,3) == "VSS"){
            vWire->setLayer(vLayer[0]); // Metal2
        }
        else{
            vWire->setLayer(vLayer[count_vWire%2]);
            count_vWire++;
        }
    }*/
}
void PRMgr_C::vlayer_reAssignment(){

}

void PRMgr_C::set_wire(){
    for(auto it : m_graph2D){
        it.second->setWires2Net();
    }
}

void PRMgr_C::addBus(Edge_C* edge){
    int insert_id = v_bus.size();
    for(int i=0;i<v_bus.size();++i){
        if(get<1>(v_bus[i]->src->getXY()) > get<1>(edge->src->getXY())){
            insert_id = i;
            break;
        }
    }
    v_bus.insert(v_bus.begin()+insert_id, edge);
}
void PRMgr_C::addVWire(Edge_C* edge){
    int insert_id = v_vWire.size();
    for(int i=0;i<v_vWire.size();++i){
        if(get<0>(v_vWire[i]->src->getXY()) > get<0>(edge->src->getXY())){
            insert_id = i;
            break;
        }
    }
    v_vWire.insert(v_vWire.begin()+insert_id, edge);
}
void PRMgr_C::addOtherWire(Edge_C* edge){
    v_otherWire.push_back(edge);
}
void PRMgr_C::sort_node_with_x(vector<Node_C*>& v_n){
    sort(v_n.begin(),v_n.end(),cmNode_x);
}
Graph_C* PRMgr_C::getSmallestCap(){ // the cap of the smallest ratio
    Graph_C* g;
    int r = 99999;
    for(Net_C* net : v_CapNet){
        if(net->capRatio < r){
            r = net->capRatio;
            g = m_graph2D[net->name];
        }
        else if(net->capRatio == r){
            if(m_graph2D[net->name]->totalCap < g->totalCap){
                r = net->capRatio;
                g = m_graph2D[net->name];
            }
        }
    }
    return g;
}
// --------------------------- output --------------------------- // 
void PRMgr_C::print_info(){
    cout << "[PR] - Nets:\n       ";
    for(auto net : v_net){
        cout << net->name << " ";
    }   
    cout << "\n";

    cout << "[PR] - IO Pins:\n       ";
    for(auto pin : v_ioPin){
        cout << pin->name << " ";
    }
    cout << "\n";

    cout << "[PR] - finCaps:\n       ";
    for(auto finCap : v_finCap){
        cout << finCap->name << "(" << finCap->id << ") ";
    }
    cout << "\n";
    
    cout << "[PR] - Pins:\n";
    for(auto it : m_pin){
        cout << "       " << it.first << ": " << it.second.size() << " pins.\n";
    }
}
void draw_svg(){

}
void draw_virtuoso(){

}