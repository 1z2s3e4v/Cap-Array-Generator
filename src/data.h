#ifndef DATA_H
#define DATA_H

#include "data.h"
#include "parser.h"
#include <string>
#include <sstream>
#include <iostream>
#include <iomanip>
#include <ctime>
#include <algorithm>
#include <random>
#include <cstdlib>
using namespace std;

// parameter ---------------------------------------------------------------------------------------------------------
#define INST_START_X 0
#define CAP_PIN_START_X 1.050
#define CAP_PIN_Y 0.160
#define CAP_SPACING_1 0.21
#define CAP_SPACING_2 0.32
#define WIRE_WIDTH 0.11
#define BUS_START_X 0.535
#define BUS_START_Y -0.505
#define BUS_END_X k 4.045
#define BUS_END_Y -1.055
#define UNIT_CAP 8.01e-16
// ---------------------------------------------------------------------------------------------------------
typedef tuple<float, float> Pos; // x, y
typedef tuple<Pos, Pos> bBox; // ll, ur

class DmMgr_C;
class Net_C;
class FinCap_C;
class Pin_C;

// --------------------------------------------------------------------------------------------------------- //
class Pin_C{
public:
    Pin_C();
    Pin_C(string);

    string name;
    
    // P&R
    Pin_C(string name, Pos pos);
    bBox getBox();

    Pos xy;
    float h=0;
    float w=0;
};
// --------------------------------------------------------------------------------------------------------- //
class FinCap_C{
public:
    FinCap_C();
    FinCap_C(int,Net_C*,CapNet); // id, Net*, CapNet

    int id=-1;
    Net_C* net;
    int index=-1; // the index in the cap array
    float capLength;
    Pin_C* topPin;
    Pin_C* buttomPin;

    // P&R
    bBox getBox();
    Pos xy;
    float h=0;
    float w=0;
};
// --------------------------------------------------------------------------------------------------------- //
class Net_C{
public:
    Net_C();
    Net_C(string,CapNet); // name, parser_CapNet_info
    // function
    void setCpara(Net_C*, float, map<string,float>);
    float getTotalCpara();
    float getTotalErrorCpara(); // get total Cpara with other nets
    float getCpara(string); // get Cpara with the net

    // variable
    string name="";
    int num_finCap=0;
    float capRatio;
    float capLength;
    string topPin;
    string buttomPin;
    float total_Cpara=0.0;
    float total_UnexpectCpara = 0.0;
    map<string,map<string,float> > m_Cpara_detail;
    map<string,float> m_net2netCpara;
    vector<Net_C*> v_paraNet;
    vector<FinCap_C*> v_finCap;
    // placement info
    int bus_index;
};
// --------------------------------------------------------------------------------------------------------- //
#endif
