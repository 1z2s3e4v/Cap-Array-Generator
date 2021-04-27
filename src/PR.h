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

class PRMgr_C;
class Placer_C;
class Router_C;
// ---------------------------------------------------------------------------------------------------------
class PRMgr_C{
public:
    PRMgr_C();
    PRMgr_C(vector<Net_C*>); // all net
    void setDmyFinCap(vector<FinCap_C*>); // dmyFinCap
    void print_info();
    void addPin(Pin_C*);
    void run();

    vector<Net_C*> v_net;
    vector<Net_C*> v_CapNet;
    vector<FinCap_C*> v_finCap;
    vector<FinCap_C*> v_dmyFinCap;
    map<string, vector<Pin_C*> > m_pin;
    vector<Pin_C*> v_ioPin;

    // placement
    void run_placement();
    void set_order_PI(); // pins and finCaps

    // routing
    void run_routing(); // net->v_wire

};
#endif