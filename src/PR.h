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
    void addNet(Net_C*);

    vector<Net_C*> v_net;

};
// ---------------------------------------------------------------------------------------------------------
class Placer_C{
public:
    Placer_C();

};
// ---------------------------------------------------------------------------------------------------------
class Router_C{
public:
    Router_C();



};
// ---------------------------------------------------------------------------------------------------------

#endif