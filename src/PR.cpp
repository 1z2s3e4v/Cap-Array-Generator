#include "PR.h"
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
    addNode(s);
    addNode(t);
    wire = Wire_C(s->getXY(),t->getXY());
}
Edge_C::Edge_C(Node_C* s, Node_C* t, float w){
    addNode(s);
    addNode(t);
    wire = Wire_C(s->getXY(),t->getXY(), w);
}
void Edge_C::addNode(Node_C* p_node){
    v_node.push_back(p_node);
}
void Edge_C::setGraph(Graph_C* p_graph){
    graph = p_graph;
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
        bus_y[ioPin->name] = get<1>(ioPin->xy);
    }
}
// --------------------------- routing --------------------------- // 
void PRMgr_C::run_routing(){
    build_graph();
    build_tree(); // add steiner point
}
void PRMgr_C::build_graph(){
    for(auto net : v_net){
        Graph_C* graph = new Graph_C(net);
        for(auto pin : m_pin[net->name]){
            Node_C* node = new Node_C(pin);
            graph->addNode(node);
            node->setGraph(graph);
        }
        m_graph.emplace(net->name, graph);
        graph->setConnectivity();
        graph->setWires2Net();
    }
}
void PRMgr_C::build_tree(){
    
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