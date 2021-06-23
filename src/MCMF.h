#ifndef MCMF_H
#define MCMF_H

#include <string>
#include <sstream>
#include <iostream>
#include <iomanip>
#include <ctime>
#include <algorithm>
#include <random>
#include <cstdlib>
#include<bits/stdc++.h>
using namespace std;

class Edge_MCMF;
class MCMF;

const int inf=2e9;
const int maxn=10050;

class Edge_MCMF{
public:
    Edge_MCMF();
    Edge_MCMF(int u,int v,int c,int f,float co):from(u),to(v),cap(c),flow(f),cost(co){}

    int from;
    int to;
    int cap, flow;
    float cost;
};
class MCMF{
public:
    MCMF();
    void init(int n);
    void add(int from,int to,int cap,float cost);
    bool BellmanFord(int s,int t,int& flow,long long& cost);
    int MincostMaxflow(int s,int t,long long& cost);

    int n,m,s,t;
    vector<Edge_MCMF> edges;
    vector<int> g[maxn];
    int inq[maxn];
    int d[maxn];
    int p[maxn];
    int a[maxn];
};


#endif