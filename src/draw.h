#ifndef DRAW_H
#define DRAW_H

#include <string>
#include <tuple>
#include <sstream>
#include <iostream>
#include <fstream>
#include <stdlib.h>

using namespace std;

typedef tuple<float, float> Pos; // x, y


class Drawer_C{
public:
    Drawer_C();
    Drawer_C(string);
    void start();
    void end();
    
    void drawInst(Pos, string name);
    void drawPath(Pos, Pos, string layer,float width);
    void drawVia(Pos, string layer1, string layer2);
private:
    string fileName;
    ofstream fout;
};

#endif