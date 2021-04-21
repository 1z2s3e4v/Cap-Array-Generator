#include "data.h"

// --------------------------------------------------------------------------------------------------------- //
Net_C::Net_C(){}
Net_C::Net_C(string netName, CapNet capNet){
    name = netName;
    num_finCap = capNet.n_finCaps;
    capRatio = capNet.capRatio;
    capLength = capNet.capLength;
    topPin = capNet.topPin;
    buttomPin = capNet.buttomPin;
    for(int i=0;i<num_finCap;++i){
        FinCap_C* finCap = new FinCap_C(i,this,capNet);
        v_finCap.push_back(finCap);
    }
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
// --------------------------------------------------------------------------------------------------------- //
FinCap_C::FinCap_C(){}
FinCap_C::FinCap_C(int id, Net_C* net,CapNet capNet){
    this->id = id;
    this->net = net;
    this->index = -1;
    this->capLength = capNet.capLength;
    this->topPin = new Pin_C(capNet.topPin);
    this->buttomPin = new Pin_C(capNet.buttomPin);
}
// --------------------------------------------------------------------------------------------------------- //
Pin_C::Pin_C(){}
Pin_C::Pin_C(string name){
    this->name = name;
}
Pin_C::Pin_C(string name, Pos pos){
    this->name = name;
    this->xy = pos;
}
// --------------------------------------------------------------------------------------------------------- //