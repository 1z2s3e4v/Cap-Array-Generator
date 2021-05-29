#ifndef DATA_H
#define DATA_H

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
// #define INST_START_X 0
// #define CAP_PIN_START_X 1.050
// #define CAP_PIN_Y 0.160
// #define CAP_SPACING_1 0.21
// #define CAP_SPACING_2 0.32
// #define WIRE_WIDTH 0.11
// #define BUS_START_X 0.535
// #define BUS_START_Y -0.505
// #define BUS_END_X k 4.045
// #define BUS_END_Y -1.055
#define UNIT_CAP 8.01e-16
// ---------------------------------------------------------------------------------------------------------
typedef tuple<float, float> Pos; // x, y
typedef tuple<Pos, Pos> bBox; // ll, ur
typedef tuple<float, float, int> Pos3d; // x, y

Pos operator+(const Pos &p1, const Pos &p2);
Pos operator-(const Pos &p1, const Pos &p2);
string pos2str(Pos pos);

class DmMgr_C;
class Net_C;
class FinCap_C;
class Pin_C;
class Wire_C;

// --------------------------------------------------------------------------------------------------------- //
class Wire_C{
public:
    Wire_C();
    Wire_C(Pos, Pos);
    Wire_C(Pos, Pos, float);
    Wire_C(Pos3d, Pos3d);
    Wire_C(Pos3d, Pos3d, float);
    void setPoint(Pos, Pos); // reset p1 and p2
    bBox getBox();

    string netName;
    char dir = ' '; // 'H' 'V' 'Z'
    Pos p1;
    Pos p2;
    float width = 0.11;
    int layer = 0; // 1 ~ 5
    int layer2 = 0; // 1 ~ 5
};
// --------------------------------------------------------------------------------------------------------- //
class Pin_C{
public:
    Pin_C();
    Pin_C(string);
    bool isIOPin();
    bool isTopPin();
    bool isBtmPin();

    string name;
    Net_C* net = nullptr;
    bool _isIOPin = false;
    FinCap_C* fcap;
    
    // P&R
    Pin_C(string name, Pos pos);
    void setXY(Pos);
    bBox getBox();

    Pos xy;
    float h=0.05;
    float w=0.05;
    int layer = 1; // 1 ~ 5
};
// --------------------------------------------------------------------------------------------------------- //
class FinCap_C{
public:
    FinCap_C();
    FinCap_C(int,Net_C*,CapNet); // id, Net*, CapNet
    FinCap_C(int,string,CapNet);
    bool isDmy();

    int id=-1;
    Net_C* net = nullptr;
    string name;
    int index=-1; // the index in the cap array
    float capLength;
    Pin_C* topPin;
    Pin_C* btmPin;
    bool _isDmy = false;

    // P&R
    void setXY(Pos);
    bBox getBox();
    Pos xy; // (0.0 0.0)
    Pos ll; // (-0.035 0.0)
    Pos ur; // (0.235 2.62)
    // default pin pos
    Pos defaultTopPinXY = Pos(0.1,2.565);
    Pos defaultBtmPinXY = Pos(0.1,0.105);
};
// --------------------------------------------------------------------------------------------------------- //
class Net_C{
public:
    Net_C();
    Net_C(string);
    Net_C(string,CapNet); // name, parser_CapNet_info
    // function
    void addFinCap(FinCap_C*);
    bool isCapNet();
    void setCpara(Net_C*, float, map<string,float>);
    float getTotalCpara();
    float getTotalErrorCpara(); // get total Cpara with other nets
    float getCpara(string); // get Cpara with the net
    void initWire();
    void addWire(Wire_C);

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
    bool _isCapNet = true;
    // placement info
    int bus_index;
    Pin_C* IOpin;
    vector<Wire_C> v_wire;
};
// --------------------------------------------------------------------------------------------------------- //
#endif
