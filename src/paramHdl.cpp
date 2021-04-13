#include "paramHdl.h"

ParamHdl_C::ParamHdl_C(int argc, char** argv){
    //cout << "\033[94m[ParamHdl]\033[0m - argc=" << argc << "\n";
    string exename = argv[0];
    size_t last_slash_idx = exename.rfind('/');
    last_slash_idx = exename.rfind('/');
    if (std::string::npos != last_slash_idx){
        bin_root = exename.substr(0, last_slash_idx);
    }
    if(argc < 2 || argc / 2 == 0){
        cmd_valid = false;
        return;
    }
    if(argv[1] == "-h"){
        help_mode = true;
        return;
    }
    else if(argv[1][0] != '-'){
        cmd_valid = false;
        return;
    }
    else{
        run_mode = argv[1];
        run_mode = run_mode.substr(1,run_mode.size());
    }
    for(int i=2;i<argc;i+=2){
        if(argv[i][0] != '-' || argv[i+1][0] == '-'){
            cmd_valid = false;
            return;
        }

        // cmd valid
        string option = argv[i];
        option = option.substr(1,option.size());
        string fileName = argv[i+1];
        m_opt2val[option] = fileName;
    }
}

bool ParamHdl_C::isCmdValid(){
    return cmd_valid;
}
bool ParamHdl_C::isHelpMode(){
    return help_mode;
}
void ParamHdl_C::printHelp(){
        cout << "usage: ./gen_capArray -genlayout -simpleInput <input.txt>                       // Generate layout automatically.\n";
        cout << "or:    ./gen_capArray -genlayout -sp <netlist.sp> -topcell <cell name>          // Generate layout automatically.\n";
        cout << "or:    ./gen_capArray -genparaRpt -spf <parasitic.spf> -simpleInput <input.txt>    // Get total parasitic for all finger cap.\n";
}
void ParamHdl_C::printMode(){
    if(run_mode == "genlayout"){
        cout << "\033[94m[ParamHdl]\033[0m - Gen Layout Mode.\n";
    }
    else if(run_mode == "genparaRpt"){
        cout << "\033[94m[ParamHdl]\033[0m - Compute Parasitic Mode.\n";
    }
    else{
        cout << "\033[94m[ParamHdl]\033[0m - no Mode \'" << run_mode << "\'.\n";
    }
}
string ParamHdl_C::getVal(string option){
    string val = "";
    if(m_opt2val.find(option) != m_opt2val.end())
        val = m_opt2val[option];
    return val;
}