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
const float BUS_START_Y = -0.5;
const float WIRE_WIDTH = 0.11;
const float WIRE_MIN_SPACING = 0.06;

const float CAP_SPACING_1 = 0.21;
const float CAP_SPACING_2 = 0.32;

class PRMgr_C;
class Graph_C;
class Node_C;
class Edge_C;
// ---------------------------------------------------------------------------------------------------------
class Graph_C{
public:
    Graph_C();
    Graph_C(Net_C*);
    void setConnectivity(); // for printing the connectivity
    void setWires2Net();
    void addNode(Node_C*);
    void addEdge(Edge_C*);
    bool isNodeExist(Pos3d);
    float getBusY();
    
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

    Pin_C* pin = nullptr;
    Pos xy;
    Pos3d xyz;
    int layer = 1;
    Graph_C* graph = nullptr;
    vector<Edge_C*> v_edge;
    bool _isPin = false;
    bool _isIOPin = false;
};
// ---------------------------------------------------------------------------------------------------------
class Edge_C{
public:
    Edge_C();
    Edge_C(Node_C* s,Node_C* t);
    Edge_C(Node_C* s,Node_C* t, float w);
    Edge_C(Node_C*);
    void addNode(Node_C*);
    void setGraph(Graph_C*);
    void setWire();
    void shiftYto(float); // TODO: if node isPin, create a new steiner point
    void shiftXto(float); // 
    void setLayer(int);

    Graph_C* graph = nullptr;
    vector<Node_C*> v_node;
    Node_C* src = nullptr;
    Node_C* tgt = nullptr;
    Wire_C wire;
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
    void build_graph(); 
    void build_mst(); // mark-lin_paper_2017
    void build_tree(); // my
    void set_wire();

    void build_2d_connection(); // for printing the 2d connection
    void layer_assignment();

    void addBus(Edge_C*);
    void addVWire(Edge_C*);
    void addOtherWire(Edge_C*);

    map<string,Graph_C*> m_graph2D; // connectivity
    map<string,Graph_C*> m_graph3D; // final layout

    vector<Edge_C*> v_bus;
    vector<Edge_C*> v_vWire;
    vector<Edge_C*> v_otherWire;

};
#endif