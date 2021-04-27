#include "PR.h"

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
    print_info();
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
// --------------------------- routing --------------------------- // 
void PRMgr_C::run_routing(){

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