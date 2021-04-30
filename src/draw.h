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
typedef tuple<Pos, Pos> bBox; // ll, ur


class Drawer_C{
public:
    Drawer_C();
    Drawer_C(string);
    
    
    // svg
    void start_svg();
    void end_svg();
    void setting(int,int,int,int,int); // outline_x outline_y scaling offset_x offset_y
    void drawRect(string name, bBox, string color);
    void drawLine(string name, Pos, Pos, string color,float width);
    void drawLine(string name, Pos, Pos, int* color,float width);
    void drawText(string name, Pos, string);

    // virtuoso
    void start();
    void end();
    void drawInst(Pos, string name);
    void drawPath(Pos, Pos, string layer,float width);
    void drawVia(Pos, string layer1, string layer2);
    void drawPin(Pos, string name, string later);
private:
    string fileName;
    ofstream fout;
    // svg
    int outline_x = 1600;
    int outline_y = 1200;
    int scaling = 200;
    int offset_x = 200;
    int offset_y = 600;
};

#endif