#ifndef DM_H
#define DM_H

#include "parser.h"
#include "draw.h"
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
// ---------------------------------------------------------------------------------------------------------
typedef tuple<float, float> Pos; // x, y

class DmMgr_C;
class Net_C;
class FinCap_C;

// --------------------------------------------------------------------------------------------------------- //
class FinCap_C{
public:
    FinCap_C();
    FinCap_C(int,Net_C*,CapNet); // id, Net*, CapNet

    int id=-1;
    Net_C* net;
    int index=-1; // the index in the cap array
    float capLength;
    string topPin;
    string buttomPin;
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
class DmMgr_C{
public:
    DmMgr_C(Parser_C *pParser, clock_t start);

    void build_graph();
    void setCpara2Graph();
    void setDefaultPlacement_PI();
    void run();
    void compute_parasitic_pl();
    void layout_gen();
    void gen_connect_layout(); // only gen wire of cap_pin to bus
    void dump_Cpara_report(string);
    void dump_Cpara_report(); // default report name = <spf_name>.Cpara.report
    void dump_Cpara_report_excel();
    void print_placement();
    void dump_placement(string);
    void setIndex();

    float getAvg1Cap(); // avg 1 fingerCap capasitor
    float getTotalCpara(); // total Cpara of this cap Array
    float getTotalErrorCpara(); // total error Cpara of this cap Array
    float getAvgMismatch(); // Avg Mismatch of this cap Array
    float getMaxMismatch(); // Max Mismatch of this cap Array
    float getMaxMismatch(int &cap1, int &cap2); // Max Mismatch of this cap Array
    float getCpara(string, string); // get Cpara between net1 and net2
    float getMismatch(string, string); // get mismatch between net1 and net2
    float getErrorProportion(string, string); // get error propotion of parasitic for net1 between net1 and net2
private:
    int run_mode = 0; // 1=compute_parasitic_cap, 2=generate_layout
    string bin_root = ".";
    string skill_file_gen_layout = "./skill/genLayout.il";
    string spf_filename;
    string layout_out_fileName;
    bool default_spf_flag = false;
    bool cfg_file_flag = false;
    // member variable
    vector<Net_C*> v_net;
    map<string,Net_C*> m_net;
    int totalCapNum = 0;
    // placement info
    vector<FinCap_C*> v_finCap; 
    vector<Net_C*> v_bus;
    
    // layout
    Drawer_C* drawer;

    // parser info
    Parser_C *pParser;
    vector<string> v_netName;
    map<string, int> m_finCapNum; // input signal(net) -> # of finger cap
    map<string, CapNet> m_capNet;
    map<string, CapNet> m_dummyCap;
    map<string, float> m_netPara; // input signal(net) -> total parasitic cap
    map<string, float> m_netUnexpectPara; // input signal(net) -> total unexpect parasitic cap
    map<string, map<string,map<string,float> > > m_Cpara_detail; // net to net parasitic -> map<capName,parasitic>
    map<string, map<string,float> > m_Cpara; // net to net parasitic
};

#endif