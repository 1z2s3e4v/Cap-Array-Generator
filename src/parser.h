#ifndef PARSER_H
#define PARSER_H

#include "paramHdl.h"
#include <string>
#include <algorithm>
#include <regex>
#include <map>
#include <vector>
#include <sstream>
#include <fstream>
#include <iostream>

using namespace std;

struct Layout_cellView{
    string lib="";
    string cell="";
    string view="";
};
struct CapNet{
    int n_finCaps;
    float capRatio;
    float capLength;
    string topPin;
    string buttomPin;
};
struct Cgf_File{
    // skill
    string template_lib;
    string template_cell;
    string template_view;
    string layout_lib;
    string layout_cell;
    string layout_view;
    // LPE
    
};

class Parser_C{
public:
    Parser_C(ParamHdl_C *pParamHdl);

    void parseSimpleInput(string);
    void parseSPICE(string,string);
    bool parseSPF(string);
    void parseCFG(string);
    void print_netFinCaps();
    void print_totalCpara();
    void print_net2netCpara();

    bool isParserOK(){return parser_ok;}
    bool isComputeParasiticMode(){return compute_parasitic_mode;}
    bool isGenLayoutMode(){return gen_layout_mode;}
    string getBinRoot(){return bin_root;}
    string getSpfFilename(){return spf_filename;}
    string getSIFilename(){return simple_input_filename;}
    string getTopCell(){return spice_topcell;}
    string getSpiceFilename(){return spice_filename;}
    string getLayoutOutFilename(){return layout_out_fileName;}

    bool parser_ok = true;
    string simple_input_filename;
    string spice_topcell;
    string spice_filename;
    string spf_filename;
    string layout_out_fileName;
    string cfg_filename;
    bool compute_parasitic_mode = false;
    bool gen_layout_mode = false;
    bool default_spf_flag = false;
    bool cfg_file_flag = false;
    string bin_root = ".";
    int design_bit = 0;
    int num_of_cap = 0;
    int num_of_dummy = 0;
    vector<string> v_nets;
    map<string, int> m_finCaps; // input signal(net) -> ratio of this net 
    map<string, CapNet> m_capNet;
    map<string, CapNet> m_dummyCap;
    map<string, float> m_netPara; // input signal(net) -> total parasitic cap
    map<string, float> m_netUnexpectPara; // input signal(net) -> total unexpect parasitic cap
    map<string, map<string,map<string,float> > > m_Cpara_detail; // net to net parasitic -> map<capName,parasitic>
    map<string, map<string,float> > m_Cpara; // net to net parasitic

    Layout_cellView capUnit;
    Layout_cellView OutputLayout;
};

#endif