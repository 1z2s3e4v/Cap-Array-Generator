#ifndef DM_H
#define DM_H

#include "parser.h"
#include "PR.h"
#include "draw.h"
#include "data.h"
#include <string>
#include <sstream>
#include <iostream>
#include <iomanip>
#include <ctime>
#include <algorithm>
#include <random>
#include <cstdlib>
#include <stdlib.h>

using namespace std;

// --------------------------------------------------------------------------------------------------------- //
class DmMgr_C{
public:
    DmMgr_C(Parser_C *pParser, clock_t start);

    void build_graph();
    void setCpara(vector<Cpara>);
    void setCpara2Graph();
    void setDefaultPlacement_PI();
    void run();
    void run_try_switch_cap_placement();
    void compute_parasitic_pl();
    void layout_gen();
    void gen_connect_layout(); // only gen wire of cap_pin to bus
    void dump_Cpara_report(string);
    void dump_Cpara_report(); // default report name = <spf_name>.Cpara.report
    void dump_Cpara_report_excel();
    void print_placement();
    void dump_placement(string);
    void setIndex();
    
    void init_cap();
    void run_placement();
    void run_routing();
    void run_draw_svg();
    void run_draw_virtuoso();

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
    vector<Net_C*> v_net; // all net
    map<string,Net_C*> m_net; // all net
    vector<Net_C*> v_nonCapNet;
    map<string,Net_C*> m_nonCapNet;
    vector<Net_C*> v_CapNet;
    map<string,Net_C*> m_CapNet;
    Net_C* topNet;
    vector<Pin_C*> v_pin;
    map<string,Pin_C*> m_pin;
    int totalCapNum = 0;
    float unit_cap = UNIT_CAP;
    
    // placement info
    vector<FinCap_C*> v_finCap;
    vector<Net_C*> v_bus;

    // Placer and Router
    PRMgr_C pr;
    //Placer_C placer;
    //Router_C router;
    
    // layout
    Drawer_C* drawer;

    // parser info
    Parser_C *pParser;
    vector<string> v_pinName;
    vector<string> v_capName;
    vector<string> v_dmyCapName;
    string top_plate_netName;
    map<string, int> m_finCapNum; // input signal(net) -> # of finger cap
    map<string, CapNet> m_capNet;
    map<string, CapNet> m_dummyCap;
    map<string, float> m_netPara; // input signal(net) -> total parasitic cap
    vector<Cpara> v_CparaDetail; // <cpara_name> <netA> <netB> <cap_value>
    map<string, float> m_netUnexpectPara; // input signal(net) -> total unexpect parasitic cap
    map<string, map<string,map<string,float> > > m_Cpara_detail; // net to net parasitic -> map<capName,parasitic>
    map<string, map<string,float> > m_Cpara; // net to net parasitic
};

#endif