#include "parser.h"

Parser_C::Parser_C(ParamHdl_C *pParamHdl){
    cout << "\033[94m[Parser]\033[0m - start Parser.\n";
    bin_root = pParamHdl->getBinRoot();
    if(pParamHdl->getMode() == "genlayout"){
        gen_layout_mode = true;
        if(pParamHdl->getVal("sp") != ""){
            spice_filename = pParamHdl->getVal("sp");
            spice_topcell = pParamHdl->getVal("topcell");
            parseSPICE(spice_filename,spice_topcell);
        }
        else if(pParamHdl->getVal("input") != ""){
            input_filename = pParamHdl->getVal("input");
            parseInput(input_filename);
        }
        if(pParamHdl->getVal("out") != ""){
            layout_out_fileName = pParamHdl->getVal("out");
        }
        else{
            layout_out_fileName = "./output/output.txt";
        }
        if(pParamHdl->getVal("spf") != ""){
            default_spf_flag = true;
            spf_filename = pParamHdl->getVal("spf");
            parseSPF(spf_filename);
        }
        if(pParamHdl->getVal("cfg_file") != ""){
            cfg_file_flag = true;
            cfg_filename = pParamHdl->getVal("cfg_file");
            parseCFG(cfg_filename);
        }
    }
    else if(pParamHdl->getMode() == "genparaRpt"){
        compute_parasitic_mode = true;
        input_filename = pParamHdl->getVal("input");
        spf_filename = pParamHdl->getVal("spf");
        parseInput(input_filename);
        parseSPF(spf_filename);
    }
}
void Parser_C::parseCFG(string fileName){
    
}
void Parser_C::parseSPICE(string fileName,string topcellName){
    
}
bool Parser_C::parseInput(string fileName){
    cout << "\033[94m[Parser]\033[0m - parsing netlist \'" << fileName << "\'\n";
    ifstream fin(fileName);
    if(!fin.is_open()) {
        cout << "\033[94m[Parser]\033[0m - cannot open spf file \'" << fileName << "\'\n";
        return false;
    }
    string line;
    vector<pair<string,int> > v_pairNameCap;
    string mode="";
    while(getline(fin,line)){
        if(line[0] == '#') continue; // comment
        stringstream ss(line);
        string head;

        // read head
        ss >> head;
        if(head == "bit"){
            ss >> design_bit;
            mode = "other";
        }
        else if(head == "Cap"){
            ss >> num_of_cap;
            mode = "Cap";
        }
        else if(head == "Dummy"){
            ss >> num_of_dummy;
            mode = "Dummy";
        }
        else if(head == "CapUnit"){
            ss >> capUnit.lib >> capUnit.cell >> capUnit.view;
            mode = "other";
        }
        else if(head == "OutputLayout"){
            ss >> capUnit.lib >> capUnit.cell >> capUnit.view;
            mode = "other";
        }
        else if(head == "Pin"){
            string pin;
            while(ss >> pin){
                v_pins.push_back(pin);
            }
            mode = "other";
        }
        // content
        else{
            string input_signal_name = head;
            CapNet capNet;
            ss >> capNet.capRatio >> capNet.n_finCaps >> capNet.capLength >> capNet.topPin >> capNet.buttomPin;
            m_finCaps[input_signal_name] = capNet.n_finCaps;
            if(mode == "Cap"){
                m_capNet[input_signal_name] = capNet;
                v_pairNameCap.push_back(pair<string,int>(input_signal_name,capNet.n_finCaps));
            }
            else if(mode == "Dummy"){
                m_dummyCap[input_signal_name] = capNet;
            }
        }
    }
    sort(v_pairNameCap.begin(),v_pairNameCap.end(),[](pair<string,int> const& p_l, pair<string,int> const& p_r){ return p_l.second > p_r.second; });
    for(int i=0;i<v_pairNameCap.size();++i){
        v_nets.push_back(v_pairNameCap[i].first);
    }
    return true;
}
bool Parser_C::parseSPF(string fileName){
    cout << "\033[94m[Parser]\033[0m - parsing spf file \'" << fileName << "\'\n";
    if(m_finCaps.size()==0){
        cout << "[error] - Please input a ligal netlist.\n";
        parser_ok = false;
        return false;
    }

    // init m_Cpara
    for(string net : v_nets){
        map<string,float> m_para;
        for(string net2 : v_nets){
            if(net != net2){
                m_para.emplace(net2,0.0);
            }
        }
        m_Cpara.emplace(net,m_para);
        m_netUnexpectPara[net] = 0.0;
    }
    
    // parse spf
    ifstream fin(fileName);
    if(!fin.is_open()) {
        cout << "\033[94m[Parser]\033[0m - cannot open spf file \'" << fileName << "\'\n";
        return false;
    }
    string line;
    string curNet = "";
    while(getline(fin,line)){
        if(line.substr(0,5) == "*|NET"){
            stringstream ss(line);
            string head,net;
            float parasitic;
            string s_parasitic;
            ss >> head >> net >> s_parasitic;
            parasitic = stof(s_parasitic.substr(0,s_parasitic.size()-2))*0.000000000001;
            curNet = net;
            if(find(v_nets.begin(),v_nets.end(),curNet) != v_nets.end()){
                m_netPara[curNet] = parasitic;
            }
        }
        if(line[0] == 'C'){
            stringstream ss(line);
            string capName, nodeA, nodeB;
            float parasitic=0.0;
            ss >> capName >> nodeA >> nodeB >> parasitic;
            size_t found = nodeA.rfind(":");
            if(found != string::npos)
                nodeA = nodeA.substr(0,found);
            found = nodeB.rfind(":");
            if(found != string::npos)
                nodeB = nodeB.substr(0,found);

            // save the detail parasitic cap info
            if(find(v_nets.begin(),v_nets.end(),nodeA) != v_nets.end()){
                m_Cpara_detail[nodeA][nodeB][capName] = parasitic;
                //cout << "net \'" << curNet << "\' set Cpara " << parasitic << "(" << nodeA << "," << nodeB << ")\n";
            }
            if(find(v_nets.begin(),v_nets.end(),nodeB) != v_nets.end()){
                m_Cpara_detail[nodeB][nodeA][capName] = parasitic;
                //cout << "net \'" << curNet << "\' set Cpara " << parasitic << "(" << nodeA << "," << nodeB << ")\n";
            }
            // net to net parasitic   // nodeA is curNode
            if(find(v_nets.begin(),v_nets.end(),curNet) != v_nets.end()){ // nodeA is net
                if(m_Cpara[curNet].find(nodeB) != m_Cpara[curNet].end()){
                    m_Cpara[curNet][nodeB] += parasitic;
                    m_Cpara[nodeB][curNet] += parasitic;
                }

                // net's unexpect parasitic
                if(nodeA != "TOP_ARRAY" && nodeB != "TOP_ARRAY"){
                    m_netUnexpectPara[curNet] += parasitic;
                    //cout << "net \'" << curNet << "\' add unexpect Cpara " << parasitic << "(" << nodeA << "," << nodeB << ")\n";
                }
                if(nodeA != curNet && find(v_nets.begin(),v_nets.end(),nodeA) != v_nets.end() && nodeB != "TOP_ARRAY"){
                    m_netUnexpectPara[nodeA] += parasitic;
                    //cout << "net \'" << nodeA << "\' add unexpect Cpara " << parasitic << "(" << nodeA << "," << nodeB << ")\n";
                }
                if(nodeB != curNet && find(v_nets.begin(),v_nets.end(),nodeB) != v_nets.end() && nodeA != "TOP_ARRAY"){
                    m_netUnexpectPara[nodeB] += parasitic;
                    //cout << "net \'" << nodeB << "\' add unexpect Cpara " << parasitic << "(" << nodeA << "," << nodeB << ")\n";
                }
            }
        }
    }
    return true;
}

void Parser_C::print_netFinCaps(){
    cout << "\033[94m[Parser]\033[0m - print net -> # of FinCaps.\n";
    for(auto it = m_finCaps.begin();it!=m_finCaps.end();it++){
        cout << it->first << " -> " << it->second << "\n";
    }
    cout << "sort with # of FinCaps: ";
    for(int i=0;i<v_nets.size();++i){
        cout << v_nets[i] << " ";
    }
    cout << "\n";
}
void Parser_C::print_totalCpara(){
    cout << "\033[94m[Parser]\033[0m - print net -> total parasitic.\n";
    for(int i=0;i<v_nets.size();++i){
        cout << v_nets[i] << "(" << m_finCaps[v_nets[i]] << "): " << m_netPara[v_nets[i]] << "\n";
    }
}
void Parser_C::print_net2netCpara(){
    cout << "\033[94m[Parser]\033[0m - print net2net -> parasitic.\n";
    for(int i=0;i<v_nets.size();++i){
        string net1 = v_nets[i];
        cout << v_nets[i] << "(" << m_finCaps[net1] << "): total=" << m_netPara[net1] << "\n";
        for(auto it=m_Cpara[net1].begin();it!=m_Cpara[net1].end();it++){
            string net2 = it->first;
            if(m_Cpara[net1][net2] > 0){
                cout << "  " << net2 << ": total=" << m_Cpara[net1][net2] << "\n";
                for(auto it2=m_Cpara_detail[net1][net2].begin();it2!=m_Cpara_detail[net1][net2].end();it2++){
                    cout << "    " << it2->first << ": " << it2->second << "\n";
                }
            }
        }
    }
}