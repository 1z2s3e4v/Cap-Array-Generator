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
struct Cpara{
    Cpara(string _cName,string _netA,string _netB,float _value){
        cName = _cName;
        netA = _netA;
        netB = _netB;
        cpara_value = _value;
    }
    string cName;
    string netA;
    string netB;
    float cpara_value;
};

class Parser_C{
public:
    Parser_C(ParamHdl_C *pParamHdl);

    bool parseInput(string);
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
    string getSIFilename(){return input_filename;}
    string getTopCell(){return spice_topcell;}
    string getSpiceFilename(){return spice_filename;}
    string getLayoutOutFilename(){return layout_out_fileName;}

    bool parser_ok = true;
    // param
    string input_filename;
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
    // input
    int design_bit = 0;
    int num_of_cap = 0;
    int num_of_dummy = 0;
    int num_of_pin = 0;
    string top_plate_netName = "TOP_ARRAY";
    vector<string> v_pins;
    vector<string> v_capNetName;
    vector<string> v_dmyCapName;  
    map<string, CapNet> m_capNet;
    map<string, CapNet> m_dummyCap;

    map<string, int> m_finCaps; // input signal(net) -> ratio of this net 
    Layout_cellView capUnit;
    Layout_cellView OutputLayout;
    // spf
    map<string, float> m_netPara; // input signal(net) -> total parasitic cap
    vector<Cpara> v_CparaDetail; // <cpara_name> <netA> <netB> <cap_value>
};

#endif