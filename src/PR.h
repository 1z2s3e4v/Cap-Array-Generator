#ifndef PR_H
#define PR_H

#include "data.h"
#include <string>
#include <sstream>
#include <iostream>
#include <iomanip>
#include <ctime>
#include <algorithm>
#include <random>
#include <cstdlib>

const float CAP_START_X = 0.0;
const float CAP_START_Y = 0.0;
const float BUS_START_X = 0.0;
const float BUS_START_Y = -0.225;
const float WIRE_WIDTH = 0.11;
const float WIRE_MIN_SPACING = 0.11; // 0.06

const float CAP_SPACING_1 = 0.21;
const float CAP_SPACING_2 = 0.32;

class Cpara_C;
class PRMgr_C;
class Graph_C;
class Node_C;
class Edge_C;
// ---------------------------------------------------------------------------------------------------------
class Cpara_C{
public:
    Cpara_C();
    Cpara_C(Edge_C*); // coupling of edge and substrate
    Cpara_C(Edge_C*,Edge_C*); // coupling of two edge
    float calculate_parasitic();
    float calculate_parasitic_substrate();
    Edge_C* getCouplingEdge(string);
    int getCouplingType();
    bool isLayer(int,int);

    Edge_C* edge; // self
    Edge_C* edge2; // coupling object 
    float cap = 0.0;
    bool withSubstrate = false;
};
// ---------------------------------------------------------------------------------------------------------
class Graph_C{
public:
    Graph_C();
    Graph_C(Net_C*);
    void setConnectivity(); // for printing the connectivity
    void setWires2Net();
    void setVias2Net();
    void addNode(Node_C*);
    void addEdge(Edge_C*);
    bool isNodeExist(Pos3d);
    float getBusY();
    
    // parasitic
    void addCpara(Cpara_C*);
    void addSubstateCpara(Cpara_C*);
    float totalUnitCap = 0.0;
    vector<Cpara_C*> v_Cpara;
    vector<Cpara_C*> v_substateCpara;
    float totalCap = 0.0;

    // variable
    Net_C* net = nullptr;
    string name;
    Node_C* ioPinNode = nullptr;
    vector<Node_C*> v_node;
    vector<Edge_C*> v_edge;
    map<float,map<float,map<float,Node_C*> > > gridTable;
    Edge_C* bus = nullptr;
};
// ---------------------------------------------------------------------------------------------------------
class Node_C{
public:
    Node_C(); 
    Node_C(Pin_C*); // pin
    Node_C(Pos3d); // steinor point
    Node_C(Pos,int); // steinor point
    void addEdge(Edge_C*);
    void setGraph(Graph_C*);
    bool isPin(){return _isPin;}
    bool isIOPin(){return _isIOPin;}
    void setPos(Pos);
    void setPos(Pos, int);
    void setPos(Pos3d);
    Pos getXY();
    Pos3d getXYZ();
    void pick();

    Pin_C* pin = nullptr;
    Pos xy;
    Pos3d xyz;
    int layer = 1;
    Graph_C* graph = nullptr;
    vector<Edge_C*> v_edge;
    bool _isPin = false;
    bool _isIOPin = false;
    bool _isOnBus = false;
    Edge_C* bus;
    bool picked = false;
};
// ---------------------------------------------------------------------------------------------------------
class Edge_C{
public:
    Edge_C();
    Edge_C(Edge_C*);
    Edge_C(Node_C* s,Node_C* t);
    Edge_C(Node_C* s,Node_C* t, float w);
    Edge_C(Node_C*);
    void addNode(Node_C*);
    void setGraph(Graph_C*);
    void setWire();
    void shiftYto(float); // TODO: if node isPin, create a new steiner point
    void shiftXto(float); // 
    void setLayer(int);
    bool isBus();
    void pick();

    Graph_C* graph = nullptr;
    vector<Node_C*> v_node;
    Node_C* src = nullptr;
    Node_C* tgt = nullptr;
    Wire_C wire;
    bool _isBus = false;
    bool picked = false;

    // for bus additional layer
    vector<Edge_C*> v_additionalLayer;
};
// ---------------------------------------------------------------------------------------------------------
class PRMgr_C{
public:
    PRMgr_C();
    PRMgr_C(vector<Net_C*>); // all net
    void setDmyFinCap(vector<FinCap_C*>); // dmyFinCap
    void print_info();
    void addPin(Pin_C*);
    void run();

    void sort_node_with_x(vector<Node_C*>&);

    vector<Net_C*> v_net;
    vector<Net_C*> v_CapNet;
    vector<FinCap_C*> v_finCap;
    vector<FinCap_C*> v_dmyFinCap;
    map<string, vector<Pin_C*> > m_pin;
    map<Pin_C*,Node_C*> m_p2n;
    vector<Pin_C*> v_ioPin;

    // placement
    void run_placement();
    void set_order_PI(); // pins and finCaps
    void place_finCap();
    void place_ioPin();

    vector<Node_C*> v_capTopNode;
    vector<Node_C*> v_capBtmNode;

    // routing
    void run_routing(); // net->v_wire
    void run_routing_network_flow(); // net->v_wire
    void build_graph(); 
    //void build_mst(); // mark-lin_paper_2017
    void set_wire();
    void set_via();

    // 1. create steiner point on bus
    // 2. connect as 2d
    void build_2d_connection(); 
    // 3. layer assignment
    void layer_assignment();
    // 4. calculate the cap (unit_cap + parasitic_cap)
    void calculate_cap();
    // 5. coupling route (Considering Cpara-matching)
    void wire_shifting();
    void vlayer_reAssignment();
    // 6. end

    // 1. create steiner point on bus
    // 2. connect all edge (all layer)
    void build_all_connection(); 
    // 3. route with network-flow and cost function
    void route_with_network_flow();
    // 4. end

    void print_cap_info();
    vector<Graph_C*> getCapGraphList();
    Graph_C* getSmallestCap();

    void addBus(Edge_C*);
    void addVWire(Edge_C*);
    void addVWire_new(Edge_C*);
    void addOtherWire(Edge_C*);

    map<string,Graph_C*> m_graph2D; // connectivity
    map<string,Graph_C*> m_graph3D; // final layout
    vector<Graph_C*> v_capGraph; // sort with cap ratio (4,4,2,2,1,1)

    vector<Edge_C*> v_bus; // all net 
    vector<Edge_C*> v_vWire; // cap nat
    vector<Edge_C*> v_otherWire;

    vector<vector<Edge_C*> > v_vWire_all;
};
#endif