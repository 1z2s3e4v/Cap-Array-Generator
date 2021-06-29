#include "PR.h"
#include "data.h"
#include <fstream>
#include <string>
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
Cpara_C::Cpara_C(Edge_C* edge){
    this->edge = edge;
    this->edge2 = nullptr;
    withSubstrate = true;
    cap = calculate_parasitic_substrate();
}
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
float Cpara_C::calculate_parasitic_substrate(){
    float cap = -1;
    if(edge->wire.layer == 1){
        cap = cap = 11.3e-17 * edge->wire.length; // 11.3
    }
    else if(edge->wire.layer == 2){
        cap = cap = 9.1e-17 * edge->wire.length; // 9.1
    }
    else if(edge->wire.layer == 3){
        cap = cap = 3.5e-17 * edge->wire.length; // 8.4
    }
    else if(edge->wire.layer == 4){
        cap = cap = 3.5e-17 * edge->wire.length; // 3.9
    }
    else if(edge->wire.layer == 5){
        cap = cap = 3.0e-17 * edge->wire.length; // 3.4
    }
    else if(edge->wire.layer == 6){
        cap = cap = 2.9e-17 * edge->wire.length; // 2.9
    }
    else {
        cap = 0;
        cout << "[Cpara_C] - Warning. Cannot calculate the parasitic(with substrate).\n";
        cout << "  Edge: \"" << edge->graph->name << "\"(M" << edge->wire.layer << "): p1=" << pos2str(edge->wire.p1) << ", p2=" << pos2str(edge->wire.p2) << "\n";
    }
    return cap;
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
                cap = 9.8e-17 * parallel; // 8.8
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(1,3)){ // M1 M3
                // TODO
                cap = 3.5e-17 * parallel; // 2.5
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(3,3)){ // M3 M3
                cap = 8.3e-17 * parallel; // 4.3
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(3,5)){ // M3 M5
                cap = 3.1e-17 * parallel; // 2.1
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(5,5)){ // M5 M5
                cap = 8.2e-17 * parallel; // 4.2
                if(get<0>(edge->wire.p2) != get<0>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(1,5)){ // M1 M5
                cap = 2.0e-17 * parallel; // 1.0
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
                cap = 9.0e-17 * parallel; // 8.0
                if(get<1>(edge->wire.p2) != get<1>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(2,4)){ // M2 M4
                cap = 3.5e-17 * parallel; // 4.5
                if(get<1>(edge->wire.p2) != get<1>(edge2->wire.p2)){
                    cap += 0.05e-17;
                }
            }
            else if(isLayer(4,4)){ // M4 M4
                // TODO
                cap = 8.2e-17 * parallel; // 7.2
                if(get<1>(edge->wire.p2) != get<1>(edge2->wire.p2)){
                    cap += 0.1e-17;
                }
            }
            else if(isLayer(4,6)){ // M4 M6
                cap = 3.5e-17 * parallel; // 4.5
            }
            else if(isLayer(6,6)){ // M6 M6
                cap = 8.2e-17 * parallel; // 7.2
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
                cap = 4.0e-17 * parallel;
            }
            else if(isLayer(2,4)){ // M2 M4
                cap = 1.5e-17 * parallel;
            }
            else if(isLayer(4,4)){ // M4 M4
                cap = 3.5e-17 * parallel;
            }
            else if(isLayer(4,6)){ // M4 M6
                cap = 1.2e-17 * parallel;
            }
            else if(isLayer(6,6)){ // M6 M6
                cap = 3.5e-17 * parallel;
            }
            else if(isLayer(2,6)){ // M2 M6
                cap = 0.8e-17 * parallel;
            }
        }
        else if(eq(spacing,0.52)){ // spacing 0.52
            // TODO
            if(isLayer(2,2)){ // M2 M2
                cap = 1.0e-17 * parallel;
            }
            else if(isLayer(2,4)){ // M2 M4
                cap = 0.2e-17 * parallel;
            }
            else if(isLayer(4,4)){ // M4 M4
                cap = 0.8e-17 * parallel;
            }
            else if(isLayer(4,6)){ // M4 M6
                cap = 0.2e-17 * parallel;
            }
            else if(isLayer(6,6)){ // M6 M6
                cap = 0.8e-17 * parallel;
            }
            else if(isLayer(2,6)){ // M2 M6
                cap = 0 * parallel;
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
        if(edge->picked){
            if(!edge->isBus() || (edge->isBus() && edge->v_additionalLayer.size() == 0))
                net->addWire(edge->wire);
            if(edge->isBus()){
                for(Edge_C* edge_additional : edge->v_additionalLayer){
                    if(edge_additional->picked)
                        net->addWire(edge_additional->wire);
                }
            }
        }
    }
}
void Graph_C::setVias2Net(){
    net->initVia();
    for(Node_C* node : v_node){
        int layer1 = 9, layer2 = 0;
        if(node->layer < layer1) layer1 = node->layer;
        if(node->layer > layer2) layer2 = node->layer;
        for(Edge_C* edge : node->v_edge){
            if(edge->picked){
                if(edge->wire.layer < layer1) layer1 = edge->wire.layer;
                if(edge->wire.layer > layer2) layer2 = edge->wire.layer;
            }
        }

        if(layer1 != layer2){
            for(int i=layer1;i<layer2;++i){
                Via_C via = Via_C(i,i+1,node->getXY());
                net->addVia(via);
                /*cout << "Node: " << name << "(";
                if(node->isPin()) cout << "isPin)";
                else if(node->isIOPin()) cout << "isIOPin)";
                else cout << "isSteinerPoint)";
                cout << " xy=" << pos2str(node->getXY()) << " --> via(M" << via.layer2 << "_M" << via.layer1 << "), xy=" << pos2str(via.xy) << "\n";
                for(Edge_C* edge : node->v_edge){
                    cout << "  Edge(M" << edge->wire.layer << "): " << pos2str(edge->wire.p1) << "->" << pos2str(edge->wire.p2) << "\n";
                }*/
            }
        }
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
void Graph_C::addSubstateCpara(Cpara_C * Cpara){
    v_substateCpara.push_back(Cpara);
    totalCap += Cpara->cap;

    // set net Cpara map
    net->m_net2netCpara["0"] += Cpara->cap;
}
// ---------------------------------------------------------------------------------------------------------
Node_C::Node_C(){
    pin = nullptr;
    _isPin = false;
    _isIOPin = false;
    _isOnBus = false;
}
Node_C::Node_C(Pos3d p_pos){
    pin = nullptr;
    _isPin = false;
    _isIOPin = false;
    _isOnBus = false;
    setPos(p_pos);
}
Node_C::Node_C(Pos p_pos, int layer){
    pin = nullptr;
    _isPin = false;
    _isIOPin = false;
    _isOnBus = false;
    setPos(p_pos,layer);
}
Node_C::Node_C(Pin_C* p_pin){
    pin = p_pin;
    _isPin = true;
    _isOnBus = false;
    picked = true;
    if(pin->isIOPin()){
        _isIOPin = true;
        _isOnBus = true;
    }
    setPos(pin->xy,pin->layer);
}
void Node_C::addEdge(Edge_C* p_edge){
    v_edge.push_back(p_edge);
    if(p_edge->isBus()){
        bus = p_edge;
        _isOnBus = true; 
    }
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
Edge_C::Edge_C(Edge_C* edge){
    this->src = edge->src;
    this->tgt = edge->tgt;
    src->addEdge(this);
    tgt->addEdge(this);
    this->wire = Wire_C(src->getXY(),tgt->getXY());
    this->graph = edge->graph;
    this->v_node = edge->v_node;

    picked = false;
    _isBus = edge->_isBus;
}
Edge_C::Edge_C(Node_C* s, Node_C* t){
    v_node.push_back(s);
    v_node.push_back(t);
    src = s;
    tgt = t;
    wire = Wire_C(src->getXY(),tgt->getXY());
    s->addEdge(this);
    t->addEdge(this);
    picked = false;
}
Edge_C::Edge_C(Node_C* s, Node_C* t, float w){
    v_node.push_back(s);
    v_node.push_back(t);
    src = s;
    tgt = t;
    wire = Wire_C(src->getXY(),tgt->getXY(), w);
    s->addEdge(this);
    t->addEdge(this);
    picked = false;
}
Edge_C::Edge_C(Node_C* ioPin){
    v_node.push_back(ioPin);
    src = ioPin;
    tgt = ioPin;
    wire = Wire_C(src->getXY(),tgt->getXY());
    _isBus = true;
    ioPin->addEdge(this);
    picked = false;
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
bool Edge_C::isBus(){
    return _isBus;
}
void Edge_C::pick(){
    picked = true;
}
void Edge_C::setName(string p_name){
    name = p_name;
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
    run_routing_ILP();
    //run_routing();
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
        v_finCap[i]->index = i;
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
    build_2d_connection(0);
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
    set_via(); // set edges back to net->v_via
}
void PRMgr_C::run_routing_ILP(){
    // 0. build the graph and connectivity
    build_graph();
    // 1. create steiner point on bus
    // 2. connect all edge (all layer)
    build_2d_connection(1); // only_nonCapNet
    layer_assignment(); // only_nonCapNet
    build_all_connection(); // only capNet
    // 3. route with network-flow and cost function
    ILP_pick_edge();
    // 4. calculate the parasitic
    calculate_cap();
    print_cap_info();

    set_wire(); // set edges back to net->v_wire
    set_via(); // set edges back to net->v_via
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
void PRMgr_C::build_2d_connection(bool only_nonCapNet){
    v_bus.clear();
    v_vWire.clear();
    v_otherWire.clear();
    for(auto it : m_graph2D){
        if(only_nonCapNet && it.second->net->isCapNet()){
            continue;
        }

        string netName = it.first;
        Graph_C* graph = it.second;
        graph->bus = new Edge_C(graph->ioPinNode);
        graph->bus->pick();
        graph->addEdge(graph->bus);
        graph->bus->setGraph(graph);
        addBus(graph->bus);
        sort_node_with_x(graph->v_node);
        for(int i=0;i<graph->v_node.size();++i){
            Node_C* node = graph->v_node[i];
            if(node->isPin() && !node->isIOPin()){
                Node_C* steiner_point;
                bool connect_neibor = false;
                int fcap_id = node->pin->fcap->index;
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
                    graph->addNode(steiner_point);
                    graph->bus->addNode(steiner_point);
                    steiner_point->addEdge(graph->bus);
                }
                Edge_C* edge = new Edge_C(node,steiner_point);
                edge->pick();
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
void PRMgr_C::build_all_connection(){
    v_bus.clear();
    v_vWire.clear();
    v_vWire_all.clear();
    v_otherWire.clear();
    
    int count_cap_bus = 0;
    for(auto it : m_graph2D){
        if(!it.second->net->isCapNet()){ // ignore nonCapNet
            continue;
        }
        string netName = it.first;
        Graph_C* graph = it.second;
        graph->bus = new Edge_C(graph->ioPinNode);
        graph->addEdge(graph->bus);
        graph->bus->setGraph(graph);
        graph->bus->setName("E_" + graph->name + "_bus");
        addBus(graph->bus);
        graph->bus->pick();
        sort_node_with_x(graph->v_node);
        for(int i=0;i<graph->v_node.size();++i){
            Node_C* node = graph->v_node[i];
            if(node->isPin() && !node->isIOPin()){
                int fcap_id = node->pin->fcap->index;
                if(fcap_id < v_finCap.size()-1){
                    // connect to neibor (this <--> right)
                    if(node->pin->isBtmPin() && v_finCap[fcap_id+1]->btmPin->name == node->pin->name){
                        // btmPin
                        Node_C* node2 = m_p2n[v_finCap[fcap_id+1]->btmPin];
                        Edge_C* edge = new Edge_C(node,node2);
                        edge->setLayer(3);
                        graph->addEdge(edge);
                        edge->setGraph(graph);
                        addOtherWire(edge);
                        edge->picked = true;
                    }
                    else if(node->pin->isTopPin() && v_finCap[fcap_id+1]->topPin->name == node->pin->name){
                        // topPin
                        Node_C* node2 = m_p2n[v_finCap[fcap_id+1]->topPin];
                        Edge_C* edge = new Edge_C(node,node2);
                        edge->setLayer(3);
                        graph->addEdge(edge);
                        edge->setGraph(graph);
                        addOtherWire(edge);
                        edge->picked = true;
                    }
                }

                if(graph->getBusY() != get<1>(node->getXY())){ // virtical
                    Node_C* steiner_point = new Node_C(Pos(get<0>(node->xy),graph->getBusY()),node->layer);
                    steiner_point->setGraph(graph);
                    graph->addNode(steiner_point);
                    graph->bus->addNode(steiner_point);
                    steiner_point->addEdge(graph->bus);

                    Edge_C* edge1 = new Edge_C(node,steiner_point); // M2
                    edge1->setLayer(2); 
                    graph->addEdge(edge1);
                    edge1->setGraph(graph);
                    edge1->setName("E_" + graph->name + to_string(node->pin->fcap->id) + "_M" + to_string(2));
                    Edge_C* edge2 = new Edge_C(node,steiner_point); // M4
                    edge2->setLayer(4);
                    graph->addEdge(edge2);
                    edge2->setGraph(graph);
                    edge2->setName("E_" + graph->name + to_string(node->pin->fcap->id) + "_M" + to_string(4));
                    Edge_C* edge3 = new Edge_C(node,steiner_point); // M6
                    edge3->setLayer(6);
                    graph->addEdge(edge3);
                    edge3->setGraph(graph);
                    edge3->setName("E_" + graph->name + to_string(node->pin->fcap->id) + "_M" + to_string(6));
                    
                    if(graph->net->isCapNet()){
                        addVWire_new(edge1); // virtical wire
                        addVWire_new(edge2); // virtical wire
                        addVWire_new(edge3); // virtical wire
                        ILP_candidate_edge.emplace(edge1->name, edge1);
                        ILP_candidate_edge.emplace(edge2->name, edge2);
                        ILP_candidate_edge.emplace(edge3->name, edge3);
                    }
                    else{
                        addOtherWire(edge1); // virtical wire
                    }
                }
                else{
                    node->addEdge(graph->bus);
                }
            }
        }
        if(graph->net->isCapNet()){
            graph->bus->setLayer(count_cap_bus%2 * 2 + 3); // M3 / M5
            Edge_C* edge1 = new Edge_C(graph->bus);
            edge1->setLayer(1);
            edge1->setName("E_" + graph->name + "_bus_M" + to_string(1));
            Edge_C* edge2 = new Edge_C(graph->bus);
            edge2->setLayer(3);
            edge2->setName("E_" + graph->name + "_bus_M" + to_string(3));
            Edge_C* edge3 = new Edge_C(graph->bus);
            edge3->setLayer(5);
            edge3->setName("E_" + graph->name + "_bus_M" + to_string(5));
            graph->bus->v_additionalLayer.push_back(edge1);
            graph->bus->v_additionalLayer.push_back(edge2);
            graph->bus->v_additionalLayer.push_back(edge3);
            ILP_candidate_edge.emplace(edge1->name, edge1);
            ILP_candidate_edge.emplace(edge2->name, edge2);
            ILP_candidate_edge.emplace(edge3->name, edge3);
            count_cap_bus++;
        }
        else{
            graph->bus->setLayer(1);
        }
    }
}
void PRMgr_C::ILP_pick_edge(){
    system("mkdir -p tmp");

    // save the edges and coupling -----------------------------------------
    ofstream ilp_txt("tmp/ilp.txt");
    // for each net source from cap pin end to bus, pick the edges
    ilp_txt << "Config:\n";
    ilp_txt << "netNum = " << v_capGraph.size() << "\n";
    ilp_txt << "baseNet = " << v_bus[0]->graph->name << "\n";
    ilp_txt << "alpha = " << alpha << "\n";
    ilp_txt << "beta = " << beta << "\n";

    ilp_txt << "Nets:\n";
    for(Graph_C* graph : v_capGraph){
        // SL1A 1 1*UNIT_CAP
        ilp_txt << graph->name << " " << graph->net->capRatio << " " << graph->net->num_finCap*UNIT_CAP << "\n";
    }

    ilp_txt << "Bus Wire:\n";
    for(int i=0;i<v_bus.size();++i){
        vector<Edge_C*> additionalLayer = v_bus[i]->v_additionalLayer;
        for(int j=0;j<additionalLayer.size();++j){
            string netName = additionalLayer[j]->graph->name;
            int layer = additionalLayer[j]->wire.layer;
            Cpara_C cpara_0 = Cpara_C(additionalLayer[j]);
            ilp_txt << "substrate_Cpara: " << additionalLayer[j]->graph->name << " " << additionalLayer[j]->name << " " << cpara_0.cap << "\n";
            // find all coupling edge
            for(int i2=0;i2<v_bus.size();++i2){
                vector<Edge_C*> additionalLayer2 = v_bus[i2]->v_additionalLayer;
                if(netName == additionalLayer2[0]->graph->name) continue; // not couple with self
                for(int j2=0;j2<additionalLayer2.size();++j2){
                    string netName2 = additionalLayer2[j2]->graph->name;
                    int layer2 = additionalLayer2[j2]->wire.layer;
                    // SL1A(5) SL1B(3) Cpara
                    Cpara_C cpara = Cpara_C(additionalLayer[j],additionalLayer2[j2]);
                    if(cpara.cap > 0){
                        ilp_txt << additionalLayer[j]->graph->name << " " << additionalLayer[j]->name << " " << additionalLayer2[j2]->name << " " << cpara.cap << "\n";
                        ilp_txt << "Seperated_by: ";
                        int start_i = (i<i2)?i:i2;
                        int end_i = (i<i2)?i2:i;
                        for(int k_i=start_i;k_i<=end_i;++k_i){ // i --> i2 / i2 --> i
                            vector<Edge_C*> additionalLayer_k = v_bus[k_i]->v_additionalLayer;
                            string netName = additionalLayer_k[j]->graph->name;
                            if(k_i == i){
                                // same layer with i2
                                if(j != j2)
                                    ilp_txt << additionalLayer_k[j2]->name << " " ;
                                // between j and j2
                                if(abs(j - j2) == 2)
                                    ilp_txt << additionalLayer_k[1]->name << " " ;    
                            }
                            else if(k_i == i2){
                                // same layer with i
                                if(j != j2)
                                    ilp_txt << additionalLayer_k[j]->name << " " ;
                                // between j and j2
                                if(abs(j - j2) == 2)
                                    ilp_txt << additionalLayer_k[1]->name << " " ;
                            }
                            else{
                                // same layer with i
                                ilp_txt << additionalLayer_k[j]->name << " " ;
                                // same layer with i2
                                if(j != j2) // avoid repeat
                                    ilp_txt << additionalLayer_k[j2]->name << " " ;
                                // between j and j2
                                if(abs(j - j2) == 2)
                                    ilp_txt << additionalLayer_k[1]->name << " " ;
                                // other
                                if(j == 1 && j2 == 0)
                                    ilp_txt << additionalLayer_k[2]->name << " " ;
                                if(j == 1 && j2 == 2)
                                    ilp_txt << additionalLayer_k[0]->name << " " ;
                            }
                        }
                        ilp_txt << "\n";
                    }
                }
            }
        }
    }
    ilp_txt << "Virtical Wire:\n";
    for(int i=0;i<v_vWire_all.size();++i){        
        vector<Edge_C*> vWire = v_vWire_all[i];
        for(int j=0;j<vWire.size();++j){
            string netName = vWire[j]->graph->name;
            int layer = vWire[j]->wire.layer;
            Cpara_C cpara_0 = Cpara_C(vWire[j]);
            ilp_txt << "substrate_Cpara: " << vWire[j]->graph->name << " " << vWire[j]->name << " " << cpara_0.cap << "\n";
            // find all coupling edge
            for(int i2=0;i2<v_vWire_all.size();++i2){
                vector<Edge_C*> vWire2 = v_vWire_all[i2];
                if(netName == vWire2[0]->graph->name) continue; // not couple with self
                for(int j2=0;j2<vWire2.size();++j2){
                    string netName2 = vWire2[j2]->graph->name;
                    int layer2 = vWire2[j2]->wire.layer;
                    // SL1A(5) SL1B(3) Cpara
                    Cpara_C cpara = Cpara_C(vWire[j],vWire2[j2]);
                    if(cpara.cap > 0){
                        ilp_txt << vWire[j]->graph->name << " " << vWire[j]->name << " " << vWire2[j2]->name << " " << cpara.cap << "\n";
                        ilp_txt << "Seperated_by: ";
                        int start_i = (i<i2)?i:i2;
                        int end_i = (i<i2)?i2:i;
                        for(int k_i=start_i;k_i<=end_i;++k_i){ // i --> i2 / i2 --> i
                            vector<Edge_C*> vWire_k = v_vWire_all[k_i];
                            string netName = vWire_k[j]->graph->name;
                            if(k_i == i){
                                // same layer with i2
                                if(j != j2)
                                    ilp_txt << vWire_k[j2]->name << " " ;
                                // between j and j2
                                if(abs(j - j2) == 2)
                                    ilp_txt << vWire_k[1]->name << " " ;    
                            }
                            else if(k_i == i2){
                                // same layer with i
                                if(j != j2)
                                    ilp_txt << vWire_k[j]->name << " " ;
                                // between j and j2
                                if(abs(j - j2) == 2)
                                    ilp_txt << vWire_k[1]->name << " " ;
                            }
                            else{
                                // same layer with i
                                ilp_txt << vWire_k[j]->name << " " ;
                                // same layer with i2
                                if(j != j2) // avoid repeat
                                    ilp_txt << vWire_k[j2]->name << " " ;
                                // between j and j2
                                if(abs(j - j2) == 2)
                                    ilp_txt << vWire_k[1]->name << " " ;
                                // other
                                if(j == 1 && j2 == 0)
                                    ilp_txt << vWire_k[2]->name << " " ;
                                if(j == 1 && j2 == 2)
                                    ilp_txt << vWire_k[0]->name << " " ;
                            }
                        }
                        ilp_txt << "\n";
                    }
                }
            }
        }
    }

    ilp_txt << "Group Wire:";
    string previous_netName = "";
    for(int i=0;i<v_vWire_all.size();++i){
        vector<Edge_C*> vWire = v_vWire_all[i];
        if(vWire[0]->graph->name != previous_netName){
            ilp_txt << "\n" << vWire[0]->graph->name << " ";
        }
        for(int j=0;j<vWire.size();++j){
            ilp_txt << vWire[j]->name << " ";
        }
        previous_netName = vWire[0]->graph->name;
    }
    ilp_txt << "\n";
    for(int i=0;i<v_bus.size();++i){
        vector<Edge_C*> additionalLayer = v_bus[i]->v_additionalLayer;
        ilp_txt << additionalLayer[0]->graph->name << " ";
        for(int j=0;j<additionalLayer.size();++j){
            ilp_txt << additionalLayer[j]->name << " ";
        }
        ilp_txt << "\n";
    }
    ilp_txt.close();

    // run ilp
    system("python ilp/ilp_pick_edge.py tmp/ilp.txt");
    // load the picking edges -----------------------------------------
    ifstream ilp_result_txt("tmp/ilp.txt.out");
    if(!ilp_result_txt.is_open()) {
        cout << "\033[94m[Parser]\033[0m - cannot open spf file \'tmp/ilp.txt.out\'\n";
    }
    string line;
    vector<pair<string,int> > v_pairNameCap;
    while(getline(ilp_result_txt,line)){
        if(line[0] != 'E') continue; // not edge
        stringstream ss(line);
        string edgeName;
        int pick;
        ss >> edgeName >> pick;
        if(pick){
            cout << edgeName << " pick()\n";
            ILP_candidate_edge[edgeName]->pick();
        }
    }
    ilp_result_txt.close();
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
        // set net Cpara map
        graph->net->m_net2netCpara["TOP_ARRAY"] = graph->totalUnitCap;
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
        Cpara_C* substateCpara = new Cpara_C(edge);
        edge->graph->addSubstateCpara(substateCpara);
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
    float total_cap = 0.0;

    cout << setprecision(3);
    cout << "\033[94m[PR]\033[0m - Cap Info:\n";
    for(Graph_C* graph : v_capGraph){
        cout << "  " << graph->net->name << "(" << graph->net->capRatio << "): ratio=" << graph->totalCap/unitCap << ", cap=" <<  graph->totalCap << "\n";
        float mismatch = abs(graph->totalCap - unitCap*graph->net->capRatio) / (unitCap*graph->net->capRatio);
        if(mismatch > max_mismatch){
            max_mismatch = mismatch;
        }
        avg_mismatch += mismatch;
        total_cap += graph->totalCap;
    }
    avg_mismatch /= v_capGraph.size();
    cout << "\033[94m[PR]\033[0m - total_cap = " << total_cap << "\n";
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
void PRMgr_C::set_via(){
    for(auto it : m_graph2D){
        it.second->setVias2Net();
    }
}

void PRMgr_C::addBus(Edge_C* edge){
    int insert_id = v_bus.size();
    for(int i=0;i<v_bus.size();++i){
        if(get<1>(edge->src->getXY()) > get<1>(v_bus[i]->src->getXY())){
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
void PRMgr_C::addVWire_new(Edge_C* edge){
    int insert_id = v_vWire_all.size();
    for(int i=0;i<v_vWire_all.size();++i){
        if(get<0>(edge->src->getXY()) == get<0>(v_vWire_all[i][0]->src->getXY())){
            v_vWire_all[i].push_back(edge);
            return;
        }
        else if(get<0>(v_vWire_all[i][0]->src->getXY()) > get<0>(edge->src->getXY())){
            insert_id = i;
            break;
        }
    }
    vector<Edge_C*> v_tmp;
    v_tmp.push_back(edge);
    v_vWire_all.insert(v_vWire_all.begin()+insert_id, v_tmp);
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