#include "dm.h"

DmMgr_C::DmMgr_C(Parser_C *pParser, clock_t start){
    cout << "\033[94m[DM]\033[0m - start DM.\n";
    bin_root = pParser->getBinRoot();
    this->pParser = pParser;
    // get netlist and connection
    v_pinName = pParser->v_pins;
    v_capName = pParser->v_capNetName;
    v_dmyCapName = pParser->v_dmyCapName;
    m_finCapNum = pParser->m_finCaps;
    m_capNet = pParser->m_capNet;
    m_dummyCap = pParser->m_dummyCap;
    top_plate_netName = pParser->top_plate_netName;
    build_graph();
    if(pParser->isComputeParasiticMode()){
        cout << "\033[94m[DM]\033[0m - Compute Parasitic Mode.\n";
        run_mode = 1;
        // get parasitic report and set to graph
        spf_filename = pParser->getSpfFilename();
        init_cap();
        m_netPara = pParser->m_netPara;
        v_CparaDetail = pParser->v_CparaDetail;
        setCpara(v_CparaDetail); // set parasitic cap to map
        setCpara2Graph(); // set parasitic map to graph
    }
    else if(pParser->isGenLayoutMode()){
        cout << "\033[94m[DM]\033[0m - Gen Layout Mode.\n";
        run_mode = 2;
        layout_out_fileName = pParser->getLayoutOutFilename();
        default_spf_flag = pParser->default_spf_flag;
        cfg_file_flag = pParser->cfg_file_flag;
        if(default_spf_flag){ // get the spf of default layout
            spf_filename = pParser->getSpfFilename();
            init_cap();
            m_netPara = pParser->m_netPara;
            v_CparaDetail = pParser->v_CparaDetail;
            setCpara(v_CparaDetail);
            setCpara2Graph();
            // 4. optimize the layout placement
            
        }
    }
    else {
        cout << "\033[94m[DM]\033[0m - Error Mode.\n";
        run_mode = 0;
    }
}

void DmMgr_C::run(){
    if(run_mode == 1){ // Compute Parasitic Mode
        dump_Cpara_report();
        //compute_parasitic(); // old way
    }
    else if (run_mode == 2){ // Gen Layout Mode
        //print_placement();
        if(cfg_file_flag){ // gen the gds and run LPE to get spf.
            //setDefaultOrder_PI();
            //run_try_switch_cap_placement();
        }
        else{
            // init cap
            init_cap();
            setCpara2Graph();

            // init pr
            pr = new PRMgr_C(v_net);
            pr->setDmyFinCap(v_dmyfinCap);
            // run pr
            pr->run();
            // draw layout
            layout_gen();
        }
    }
    else{
        cout << "\033[94m[DM]\033[0m - Please choose one mode.\n";
        return;
    }
    cout << "\033[94m[DM]\033[0m - Run Complete.\n";
}

void DmMgr_C::init_cap(){
    m_Cpara.clear();
    m_netPara.clear();
    m_Cpara_detail.clear();
    m_netUnexpectPara.clear();
    // init m_Cpara
    for(Net_C* net : v_CapNet){
        map<string,float> m_para;
        map<string,map<string,float> > m_empty;
        for(Net_C* net2 : v_CapNet){
            if(net != net2){
                m_para.emplace(net2->name,0.0);
            }
        }
        m_Cpara.emplace(net->name,m_para);
        m_netPara[net->name] = net->num_finCap * unit_cap;
        m_Cpara_detail[net->name] = m_empty;
        m_netUnexpectPara[net->name] = 0.0;
    }
}

// void DmMgr_C::run_try_switch_cap_placement(){
//     gen_connect_layout(); // only create the metal to connect to bus
//     // 0. create log_dir
//     time_t now = time(0);
//     tm *ltm = localtime(&now);
//     string pwd = "~/frank/project/";
//     string workpath = "output/" + to_string(1900 + ltm->tm_year) + "-" + to_string(1 + ltm->tm_mon) + "-" + to_string(ltm->tm_mday) + "-" + to_string(0+ltm->tm_hour) + "-" + to_string(10+ltm->tm_min);
//     string cmd = "mkdir -p " + workpath;
//     system(cmd.c_str());
//     cout << "\033[94m[DM]\033[0m - Create log dir \'" << workpath << "\'\n";
    
//     float min_Mismatch = 9999.0;
//     float min_Para = 99999.0;
//     string bestm_case_dir = "";
//     string bestp_case_dir = "";
//     for(int i=0;i<100000;++i){
//         string workpath_case = workpath + "/" + to_string(i);
//         string cmd = "mkdir -p " + workpath_case;
//         system(cmd.c_str());
//         // 1. run skill to generate layout and stream out gds
//         cmd = "source skill/run.cshrc > ./runLPE/runSkill.log";
//         cout << "\033[94m[DM]\033[0m - run cmd \'" << cmd << "\'\n";
//         system(cmd.c_str());
        
//         // 2. run LPE to extract parasitic cap
//         cmd = "cd runLPE ; sh runLPE.sh; cd ..";
//         cout << "\033[94m[DM]\033[0m - run cmd \'" << cmd << "\'\n";
//         system(cmd.c_str());
        
//         // 3. parse spf file
//         spf_filename = "./runLPE/ARRAY_CMP_T1.spf";
//         if(!pParser->parseSPF(spf_filename)){
//             cout << "\033[94m[DM]\033[0m - Run Failed because \'parseSPF\'.\n";
//             return;
//         }
//         init_cap();
//         m_netPara = pParser->m_netPara;
//         v_CparaDetail = pParser->v_CparaDetail;
//         setCpara(v_CparaDetail);
//         setCpara2Graph();

//         // 4. put all info to log dir
//         string log_filename = "./runLPE/*.log output/path.txt runLPE/gds_sp/ARRAY_CAP_T1.gds runLPE/ARRAY_CMP_T1.spf";
//         cmd = "cp " + log_filename + " " + workpath_case + "/";
//         cout << "\033[94m[DM]\033[0m - run cmd \'" << cmd << "\'\n";
//         system(cmd.c_str());
//         string placement_file = workpath_case + "/ARRAY_CMP_T1.placement";
//         dump_placement(placement_file);
//         string Cpara_rpt = workpath_case + "/ARRAY_CMP_T1.spf.Cpara.report";
//         dump_Cpara_report(Cpara_rpt);
        
//         if(min_Mismatch > getMaxMismatch()*100){
//             cout << "\033[94m[DM]\033[0m - find best_mismatch!\n";
//             min_Mismatch = getMaxMismatch()*100;
//             bestm_case_dir = workpath_case;
//             cmd = "ln -fsn " + pwd + bestm_case_dir + " " + pwd + workpath + "/best_mismatch";
//             system(cmd.c_str());
//         }
//         if(min_Para > getTotalCpara()){
//             cout << "\033[94m[DM]\033[0m - find best_cpara!\n";
//             min_Para = getTotalCpara();
//             bestp_case_dir = workpath_case;
//             cmd = "ln -fsn " + pwd + bestp_case_dir + " " + pwd + workpath + "/best_cpara";
//             system(cmd.c_str());
//         }

//         random_shuffle( v_finCap.begin(), v_finCap.end() );
//         setIndex();
//         gen_connect_layout();
//     }
//     // 4. optimize the layout placement

// }

void DmMgr_C::setIndex(){
    for(int i=0;i<v_finCap.size();++i){
        v_finCap[i]->index = i;
    }
}

void DmMgr_C::build_graph(){
    totalCapNum = 0;
    for(int i=0;i<v_capName.size();++i){
        string netName = v_capName[i];
        Net_C* net = new Net_C(netName,m_capNet[netName]);
        v_net.push_back(net);
        m_net.emplace(v_capName[i],net);
        v_CapNet.push_back(net);
        m_CapNet.emplace(v_capName[i],net);
        for(int j=0;j<m_finCapNum[netName];++j){
            FinCap_C* finCap = new FinCap_C(j,net,m_capNet[netName]);
            net->addFinCap(finCap);
            v_finCap.push_back(finCap);
            totalCapNum++;
        }
    }
    for(int i=0;i<v_dmyCapName.size();++i){
        string dmyName = v_dmyCapName[i];
        for(int j=0;j<m_finCapNum[dmyName];++j){
            FinCap_C* finCap = new FinCap_C(j,dmyName,m_dummyCap[dmyName]);
            v_finCap.push_back(finCap);
            v_dmyfinCap.push_back(finCap);
            totalCapNum++;
        }
    }
    for(int i=0;i<v_pinName.size();++i){
        Pin_C* pin = new Pin_C(v_pinName[i]);
        pin->_isIOPin = true;
        v_pin.push_back(pin);
        m_pin.emplace(v_pinName[i],pin);

        // add pin to net
        if(find(v_capName.begin(),v_capName.end(),v_pinName[i]) == v_capName.end()){
            Net_C* net = new Net_C(v_pinName[i]);
            net->IOpin = pin;
            v_net.push_back(net);
            m_net.emplace(v_pinName[i],net);
            v_nonCapNet.push_back(net);
            m_nonCapNet.emplace(v_pinName[i],net);
        }
        else{
            m_net[v_pinName[i]]->IOpin = pin;
        }
    }
}
void DmMgr_C::setCpara(vector<Cpara> v_CparaDetail){
    // net to net parasitic   // nodeA is curNode
    for(Cpara cpara : v_CparaDetail){
        if(m_CapNet.find(cpara.netA) != m_CapNet.end()){
            // set m_Cpara_detail
            if(m_Cpara_detail[cpara.netA].find(cpara.netB) == m_Cpara_detail[cpara.netA].end()){
                map<string,float> m_empty;
                m_Cpara_detail[cpara.netA].emplace(cpara.netB,m_empty);
            }
            m_Cpara_detail[cpara.netA][cpara.netB][cpara.cName] = cpara.cpara_value;
            // set m_Cpara
            if(m_CapNet.find(cpara.netB) != m_CapNet.end()){
                m_Cpara[cpara.netA][cpara.netB] += cpara.cpara_value;
            }
            // set m_netUnexpectPara
            if(cpara.netB != top_plate_netName){ 
                m_netUnexpectPara[cpara.netA] += cpara.cpara_value;
            }
        }
        if(m_CapNet.find(cpara.netB) != m_CapNet.end()){
            // set m_Cpara_detail
            if(m_Cpara_detail[cpara.netB].find(cpara.netA) == m_Cpara_detail[cpara.netB].end()){
                map<string,float> m_empty;
                m_Cpara_detail[cpara.netB].emplace(cpara.netA,m_empty);
            }
            m_Cpara_detail[cpara.netB][cpara.netA][cpara.cName] = cpara.cpara_value;
            // set m_Cpara
            if(m_CapNet.find(cpara.netA) != m_CapNet.end()){
                m_Cpara[cpara.netB][cpara.netA] += cpara.cpara_value;
            }
            // set m_netUnexpectPara
            if(cpara.netA != top_plate_netName){ 
                m_netUnexpectPara[cpara.netB] += cpara.cpara_value;
            }
        }
    }
}
void DmMgr_C::setCpara2Graph(){
    for(int i=0;i<v_CapNet.size();++i){
        Net_C* net = v_CapNet[i];
        net->total_Cpara = m_netPara[net->name];
        net->total_UnexpectCpara = m_netUnexpectPara[net->name];
        for(int j=i+1;j<v_CapNet.size();++j){
            Net_C* net2 = v_CapNet[j];
            if(m_Cpara[net->name][net2->name] > 0){
                net->setCpara(net2, m_Cpara[net->name][net2->name], m_Cpara_detail[net->name][net2->name]);
                net2->setCpara(net, m_Cpara[net2->name][net->name], m_Cpara_detail[net2->name][net->name]);
            }
        }
    }
}
// void DmMgr_C::setDefaultOrder_PI(){
//     v_bus.clear();
//     v_finCap.clear();
//     //// sort net with # of finCap (more to less)
//     sort(v_CapNet.begin(),v_CapNet.end(),[](Net_C* n1, Net_C* n2){ return n1->num_finCap > n2->num_finCap; });
//     for(auto net : v_CapNet){
//         // bus
//         net->bus_index = v_bus.size();
//         v_bus.push_back(net);
//         // cap
//         for(auto cap : net->v_finCap){
//             int mid = v_finCap.size()/2;
//             v_finCap.insert(v_finCap.begin()+mid,cap);
//         }
//     }
//     setIndex();
// }

float DmMgr_C::getTotalCpara(){
    float totalCpara = 0.0;
    for(auto net : v_CapNet){
        totalCpara += net->getTotalCpara();
    }
    return totalCpara;
}
float DmMgr_C::getTotalErrorCpara(){
    float totalErrorCpara = 0.0;
    /*for(int i=0;i<v_CapNet.size();++i){
        for(int j=0;j<v_CapNet.size();++j){
            totalErrorCpara += getCpara(v_CapNet[i]->name, v_CapNet[j]->name);
        }
    }*/
    for(int i=0;i<v_CapNet.size();++i){
        totalErrorCpara += v_CapNet[i]->getTotalErrorCpara();
    }
    return totalErrorCpara;
}
float DmMgr_C::getAvg1Cap(){
    float avg1Cap = 0;
    for(int i=0;i<v_CapNet.size();++i){
        avg1Cap += v_CapNet[i]->getTotalCpara() / v_CapNet[i]->num_finCap;
    }
    avg1Cap = avg1Cap / v_CapNet.size();
    return avg1Cap;
}
float DmMgr_C::getAvgMismatch(){
    float avg1Cap = getAvg1Cap();
    float totalMismatchRatio;
    float maxMismatchRatio = -1.0;
    for(int i=0;i<v_CapNet.size();++i){
        totalMismatchRatio += abs(avg1Cap*v_CapNet[i]->num_finCap - v_CapNet[i]->getTotalCpara()) / max(avg1Cap*v_CapNet[i]->num_finCap,v_CapNet[i]->getTotalCpara());
        maxMismatchRatio = max(maxMismatchRatio,abs(avg1Cap*v_CapNet[i]->num_finCap - v_CapNet[i]->getTotalCpara()) / max(avg1Cap*v_CapNet[i]->num_finCap,v_CapNet[i]->getTotalCpara()));
    }
    float avgMismatchRatio = totalMismatchRatio / v_CapNet.size();
    return avgMismatchRatio;
}
float DmMgr_C::getMaxMismatch(){
    float avg1Cap = getAvg1Cap();
    float totalMismatchRatio;
    float maxMismatchRatio = -1.0;
    for(int i=0;i<v_CapNet.size();++i){
        for(int j=i+1;j<v_CapNet.size();++j){
            float mismatch = abs(((v_CapNet[i]->getTotalCpara()/v_CapNet[j]->getTotalCpara())-(v_CapNet[i]->num_finCap/v_CapNet[j]->num_finCap))/(v_CapNet[i]->num_finCap/v_CapNet[j]->num_finCap));
            if(mismatch > maxMismatchRatio){
                maxMismatchRatio = mismatch;
            }
        }
    }
    return maxMismatchRatio;
}
float DmMgr_C::getMaxMismatch(int &cap1, int &cap2){
    float avg1Cap = getAvg1Cap();
    float totalMismatchRatio;
    float maxMismatchRatio = -1.0;
    for(int i=0;i<v_CapNet.size();++i){
        for(int j=i+1;j<v_CapNet.size();++j){
            float mismatch = abs(((v_CapNet[i]->getTotalCpara()/v_CapNet[j]->getTotalCpara())-(v_CapNet[i]->num_finCap/v_CapNet[j]->num_finCap))/(v_CapNet[i]->num_finCap/v_CapNet[j]->num_finCap));
            if(mismatch > maxMismatchRatio){
                maxMismatchRatio = mismatch;
                cap1 = i;
                cap2 = j;
            }
        }
    }
    return maxMismatchRatio;
}
float DmMgr_C::getCpara(string net1, string net2){
    return m_CapNet[net1]->getCpara(net2);
}
float DmMgr_C::getMismatch(string net1, string net2){
    float diff = abs(m_CapNet[net1]->getTotalCpara()/m_CapNet[net1]->num_finCap - m_CapNet[net2]->getTotalCpara()/m_CapNet[net2]->num_finCap);
    return diff / max(m_CapNet[net1]->getTotalCpara(),m_CapNet[net2]->getTotalCpara());
}
float DmMgr_C::getErrorProportion(string net1, string net2){
    return m_CapNet[net1]->getCpara(net2) / m_CapNet[net1]->getTotalCpara();
}

void DmMgr_C::compute_parasitic_pl(){
    string output_file = spf_filename;
    size_t last_slash_idx = output_file.rfind('/');
    last_slash_idx = output_file.rfind('/');
    if (std::string::npos != last_slash_idx){
        output_file = output_file.substr(last_slash_idx+1, output_file.size()-last_slash_idx-1);
    }
    
    string cmd = bin_root + "/get_all_paracap.pl " + spf_filename + " |& tee output/" + output_file + ".Cpara";
    system(cmd.c_str());
}

void DmMgr_C::dump_Cpara_report(string output_file){
    ofstream fout(output_file.c_str());
    fout << setprecision(3);
    int max_Mismatch_cap1,max_Mismatch_cap2;
    fout << "Total_Cpara=" << getTotalCpara() << ", " << "Total_Error_Cpara=" << getTotalErrorCpara() << "(" << getTotalErrorCpara()/getTotalCpara() * 100 << "%),\n";
    fout << "Mismatch=" << getMaxMismatch(max_Mismatch_cap1,max_Mismatch_cap2)*100 << "%";
    fout << " (" << v_CapNet[max_Mismatch_cap1]->name << "," << v_CapNet[max_Mismatch_cap2]->name << "), ";
    fout << "avg_mismatch=" << getAvgMismatch()*100 << "%\n";
    fout << "Target Cap. Ratio: ";
    for(int i=0;i<v_CapNet.size();++i){
        fout << v_CapNet[i]->num_finCap;
        if(i!=v_CapNet.size()-1)
            fout << " : ";
    }
    fout << "\n";
    fout << "Real Cap. Ratio: ";
    for(int i=0;i<v_CapNet.size();++i){
        fout << v_CapNet[i]->getTotalCpara()/getAvg1Cap();
        if(i!=v_CapNet.size()-1)
            fout << " : ";
    }
    fout << "\n";
    fout << "---------------------------------------------------------------------------\n";
    for(int i=0;i<v_CapNet.size();++i){
        string net1 = v_CapNet[i]->name;
        fout << net1 << "(" << m_finCapNum[net1] << "): total=" << m_netPara[net1] << ", ";
        fout << "error_cap=" << v_CapNet[i]->getTotalErrorCpara() << "(" << v_CapNet[i]->getTotalErrorCpara()/v_CapNet[i]->getTotalCpara()*100 << "%)\n";
        
        for(auto it=m_Cpara[net1].begin();it!=m_Cpara[net1].end();it++){
            string net2 = it->first;
            if(getCpara(net1,net2) > 0){
                fout << "  " << net2 << ": total=" << getCpara(net1,net2) << ", Mismatch=" << getMismatch(net1,net2)*100 << "%, error_proportion=" << min(getErrorProportion(net1, net2),getErrorProportion(net2, net1))*100 << "%\n";
                /*for(auto it2=m_Cpara_detail[net1][net2].begin();it2!=m_Cpara_detail[net1][net2].end();it2++){
                    fout << "    " << it2->first << ": " << it2->second << "\n";
                }*/
            }
        }
        for(auto it=m_Cpara_detail[net1].begin();it!=m_Cpara_detail[net1].end();it++){
            string net2 = it->first;
            if(find(v_capName.begin(),v_capName.end(),net2) == v_capName.end()){
                for(auto it2=m_Cpara_detail[net1][net2].begin();it2!=m_Cpara_detail[net1][net2].end();it2++){
                    fout << "  " << net2 << ": " << it2->second << "\n";
                }
            }
        }
    }
    cout << "\033[94m[DM]\033[0m - dump parasitic report file \'" << output_file << "\'\n";
}
void DmMgr_C::dump_Cpara_report(){
    string output_file = spf_filename;
    size_t last_slash_idx = output_file.rfind('/');
    last_slash_idx = output_file.rfind('/');
    if (std::string::npos != last_slash_idx){
        output_file = output_file.substr(last_slash_idx+1, output_file.size()-last_slash_idx-1);
    }
    string outputFileName = "output/" + output_file + ".Cpara.report";
    dump_Cpara_report(outputFileName);
}
void DmMgr_C::dump_Cpara_report_excel(){

}
void DmMgr_C::print_placement(){
    cout << "cap:\n";
    for(auto cap : v_finCap){
        cout << cap->net->name << "(" << cap->id << ") ";
    }
    cout << "\n";
    cout << "bus:\n";
    for(auto bus : v_bus){
        cout << bus->name << "=====================================================================\n";
    }
}
void DmMgr_C::dump_placement(string output_file){
    ofstream fout(output_file.c_str());
    fout << "cap:\n";
    for(auto cap : v_finCap){
        fout << cap->net->name << "(" << cap->id << ") ";
    }
    fout << "\n";
    fout << "bus:\n";
    for(auto bus : v_bus){
        fout << bus->name << "=====================================================================\n";
    }
    cout << "\033[94m[DM]\033[0m - dump placement result \'" << output_file << "\'\n";
}

void DmMgr_C::gen_connect_layout(){ // only gen wire of cap_pin to bus
    drawer = new Drawer_C(layout_out_fileName);
    drawer->start();
    Pos capPin_first = Pos(CAP_PIN_START_X,CAP_PIN_Y);
    for(auto cap : v_finCap){
        float x = get<0>(capPin_first) + cap->index*CAP_SPACING_1;
        float y_end = BUS_START_Y - cap->net->bus_index*WIRE_WIDTH;
        Pos path_start = Pos(x,CAP_PIN_Y);
        Pos path_end = Pos(x,y_end-WIRE_WIDTH/2);
        drawer->drawPath(path_start,path_end,"M2",WIRE_WIDTH);
        Pos via_xy = Pos(x,y_end);
        if(cap->net->bus_index%2 == 0)
            drawer->drawVia(via_xy,"M3","M2");
        else
            drawer->drawVia(via_xy,"M2","M1");
    }
    drawer->end();
    cout << "\033[94m[DM]\033[0m - Path file has been generated at \'" << layout_out_fileName << "\'\n";
}

void DmMgr_C::layout_gen(){
    draw_svg();
    draw_virtuoso();
}
void DmMgr_C::draw_svg(){
    for(Pin_C* pin : v_pin){ // IO Pin

    }
    for(Net_C* net : v_net){ 
        for(Wire_C wire : net->v_wire){ // wire

        }
    }
}
void DmMgr_C::draw_virtuoso(){
    
}