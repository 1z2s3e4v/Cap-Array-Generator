#include "data.h"

Pos operator+(const Pos &p1, const Pos &p2){
    return Pos(get<0>(p1)+get<0>(p2), get<1>(p1)+get<1>(p2));
}
Pos operator-(const Pos &p1, const Pos &p2){
    return Pos(get<0>(p1)-get<0>(p2), get<1>(p1)-get<1>(p2));
}
string pos2str(Pos pos){
    string s;
    s += "(" + to_string(get<0>(pos)) + "," + to_string(get<1>(pos)) + ")";
    return s;
}
// --------------------------------------------------------------------------------------------------------- //
Via_C::Via_C(){}
Via_C::Via_C(int layer1, int layer2, Pos xy){
    this->layer1 = layer1;
    this->layer2 = layer2;
    this->xy = xy;
}
// --------------------------------------------------------------------------------------------------------- //
Wire_C::Wire_C(){}
Wire_C::Wire_C(Pos s, Pos t){
    setPoint(s,t);
}
Wire_C::Wire_C(Pos s, Pos t, float w){
    width = w;
    setPoint(s,t);
}
Wire_C::Wire_C(Pos3d s, Pos3d t){
    p1 = Pos(get<0>(s),get<1>(s));
    layer = get<2>(s);
    p2 = Pos(get<0>(t),get<1>(t));
    layer2 = get<2>(t);
}
Wire_C::Wire_C(Pos3d s, Pos3d t, float w){
    p1 = Pos(get<0>(s),get<1>(s));
    layer = get<2>(s);
    p2 = Pos(get<0>(t),get<1>(t));
    layer2 = get<2>(t);
    width = w;
}
void Wire_C::setPoint(Pos s, Pos t){
    if(get<0>(s) == get<0>(t)) dir = 'V';
    if(get<1>(s) == get<1>(t)) dir = 'H';
    if(dir == 'H'){
        if(get<0>(s) > get<0>(t)) swap(s,t);
        p1 = Pos(get<0>(s) - (float)width/2.0, get<1>(s));
        p2 = Pos(get<0>(t) + (float)width/2.0, get<1>(t));
        length = get<0>(p2) - get<0>(p1);
    }
    else if(dir == 'V'){
        if(get<1>(s) > get<1>(t)) swap(s,t);
        p1 = Pos(get<0>(s), get<1>(s) - (float)width/2.0);
        p2 = Pos(get<0>(t), get<1>(t) + (float)width/2.0);
        length = get<1>(p2) - get<1>(p1);
    }
    else{
        p1 = s;
        p2 = t;
    }
}
bBox Wire_C::getBox(){
    Pos ll = p1;
    Pos ur = p2;
    if(dir == 'H'){
        ll = Pos(get<0>(ll),get<1>(ll)-width/2.0);
        ur = Pos(get<0>(ur),get<1>(ur)+width/2.0);
    }
    else if(dir == 'V'){
        ll = Pos(get<0>(ll)-width/2.0,get<1>(ll));
        ur = Pos(get<0>(ur)+width/2.0,get<1>(ur));
    }
    else{
        ll = Pos(get<0>(ll)-width/2.0,get<1>(ll)-width/2.0);
        ur = Pos(get<0>(ur)+width/2.0,get<1>(ur)+width/2.0);
    }
    return bBox(ll,ur);
}
// --------------------------------------------------------------------------------------------------------- //
Net_C::Net_C(){}
Net_C::Net_C(string netName, CapNet capNet){
    name = netName;
    _isCapNet = true;
    num_finCap = capNet.n_finCaps;
    capRatio = capNet.capRatio;
    capLength = capNet.capLength;
    topPin = capNet.topPin;
    buttomPin = capNet.buttomPin;
}
Net_C::Net_C(string netName){
    name = netName;
    _isCapNet = false;
}
void Net_C::addFinCap(FinCap_C* finCap){
    v_finCap.push_back(finCap);
}
void Net_C::setCpara(Net_C* net2, float Cpara, map<string,float> Cpara_detail){
    this->v_paraNet.push_back(net2);
    this->m_net2netCpara.emplace(net2->name,Cpara);
    this->m_Cpara_detail.emplace(net2->name,Cpara_detail);
}
float Net_C::getTotalCpara(){
    return total_Cpara;
}
float Net_C::getTotalErrorCpara(){
    /*float totalErrorCpara = 0.0;
    for(auto it=m_net2netCpara.begin();it!=m_net2netCpara.end();it++){
        totalErrorCpara += it->second;
    }
    return totalErrorCpara;*/
    return total_UnexpectCpara;
}
float Net_C::getCpara(string net2){
    return m_net2netCpara[net2];
}
bool Net_C::isCapNet(){
    return _isCapNet;
}
void Net_C::initWire(){
    v_wire.clear();
}
void Net_C::initVia(){
    v_via.clear();
}
void Net_C::addWire(Wire_C p_wire){
    v_wire.push_back(p_wire);
}
void Net_C::addVia(Via_C p_via){
    v_via.push_back(p_via);
}
// --------------------------------------------------------------------------------------------------------- //
FinCap_C::FinCap_C(){}
FinCap_C::FinCap_C(int id, Net_C* net,CapNet capNet){
    this->id = id;
    this->net = net;
    this->index = -1;
    this->name = net->name;
    _isDmy = false;
    this->capLength = capNet.capLength;
    this->topPin = new Pin_C(capNet.topPin);
    this->btmPin = new Pin_C(capNet.buttomPin);
    this->topPin->fcap = this;
    this->btmPin->fcap = this;
    this->topPin->layer = 4;
    this->btmPin->layer = 4;

    // default
    xy = Pos(0,0);
    ll = Pos(-0.035, 0.0);
    ur = Pos(0.235, 2.62);
}
FinCap_C::FinCap_C(int id,string dmyName,CapNet capNet){
    this->id = id;
    this->net = net;
    this->index = -1;
    this->name = dmyName;
    _isDmy = true;
    this->capLength = capNet.capLength;
    this->topPin = new Pin_C(capNet.topPin);
    this->btmPin = new Pin_C(capNet.buttomPin);
    this->topPin->fcap = this;
    this->btmPin->fcap = this;
    this->topPin->layer = 4;
    this->btmPin->layer = 4;

    // default
    xy = Pos(0,0);
    ll = Pos(-0.035, 0.0);
    ur = Pos(0.235, 2.62);
}
bool FinCap_C::isDmy(){
    return _isDmy;
}
void FinCap_C::setXY(Pos pos){
    ll = ll + (pos - xy);
    ur = ur + (pos - xy);
    xy = pos;
    topPin->setXY(xy + defaultTopPinXY);
    btmPin->setXY(xy + defaultBtmPinXY);
}
bBox FinCap_C::getBox(){
    return bBox(ll,ur);
}
// --------------------------------------------------------------------------------------------------------- //
Pin_C::Pin_C(){}
Pin_C::Pin_C(string name){
    this->name = name;
    _isIOPin = false;
}
Pin_C::Pin_C(string name, Pos pos){
    this->name = name;
    this->xy = pos;
    _isIOPin = false;
}
bool Pin_C::isTopPin(){
    return (this == this->fcap->topPin);
}
bool Pin_C::isBtmPin(){
    return (this == this->fcap->btmPin);
}
bool Pin_C::isIOPin(){
    return _isIOPin;
}
void Pin_C::setXY(Pos pos){
    xy = pos;
}
bBox Pin_C::getBox(){
    Pos ll = Pos(get<0>(xy) - h/2.0, get<1>(xy) - w/2.0);
    Pos ur = Pos(get<0>(xy) + h/2.0, get<1>(xy) + w/2.0);
    return bBox(ll,ur);
}
// --------------------------------------------------------------------------------------------------------- //