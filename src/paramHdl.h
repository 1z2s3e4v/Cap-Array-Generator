#ifndef PARAMDDL_H
#define PARAMDDL_H

#include <string>
#include <map>
#include <sstream>
#include <iostream>

using namespace std;

class ParamHdl_C{
public:
    ParamHdl_C(int argc, char** argv);
    
    bool isCmdValid();
    bool isHelpMode();
    void printMode();
    void printHelp();
    string getVal(string option);
    string getMode(){return run_mode;}
    string getBinRoot(){return bin_root;}
private:
    bool help_mode = false;
    bool cmd_valid = true;
    string run_mode = "";
    string bin_root = ".";
    int argc = 1;
    map<string,string> m_opt2val;
};

#endif