#include "draw.h"

string pos2str(Pos pos) {return "("+to_string(get<0>(pos))+","+to_string(get<1>(pos))+")";}

Drawer_C::Drawer_C(){}
Drawer_C::Drawer_C(string s){
    fileName = s;
    string cmd = "rm ";
    cmd += fileName;
    system(cmd.c_str());
}
void Drawer_C::drawInst(Pos xy, string name){
    fout << "inst " << name << " " << "ADC_SAR4BIT" << " " << "CU1F" << " " << "layout" << " " << get<0>(xy) << " " << get<1>(xy) << " " << "R0" << "\n";
}
void Drawer_C::drawPath(Pos start, Pos end, string layer, float width){
    fout << "shape " << layer << " " << get<0>(start) << " " << get<1>(start) << " " << get<0>(end) << " " << get<1>(end) << " " << width << "\n";
}
void Drawer_C::drawVia(Pos xy, string layer1, string layer2){
    fout << "via " << layer1 << "_" << layer2 << " " << get<0>(xy) << " " << get<1>(xy) << "\n";
}
void Drawer_C::start(){
    fout.open(fileName.c_str(), ofstream::out);
}
void Drawer_C::end(){
    fout.close();
}