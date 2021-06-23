#include "MCMF.h"

MCMF::MCMF(){

}
void MCMF::init(int n){
    this->n=n;
    for(int i=0;i<n;++i) g[i].clear();
    edges.clear();
}
void MCMF::add(int from,int to,int cap,float cost){
    edges.push_back(Edge_MCMF(from,to,cap,0,cost));
    edges.push_back(Edge_MCMF(to,from,0,0,-cost));
    m=edges.size();
    g[from].push_back(m-2);
    g[to].push_back(m-1);
}
bool MCMF::BellmanFord(int s,int t,int& flow,long long& cost){
    for(int i=0;i<n;++i) d[i]=inf;
    memset(inq,0,sizeof(inq));
    d[s]=0;
    inq[s]=1;
    p[s]=0;
    a[s]=inf;

    queue<int> que;
    que.push(s);
    while(!que.empty()){
        int u=que.front();
        que.pop();
        inq[u]=0;
        for(int i=0;i<g[u].size();++i){
            Edge_MCMF& e=edges[g[u][i]];
            if(e.cap>e.flow && d[e.to]>d[u]+e.cost){
                d[e.to]=d[u]+e.cost;
                p[e.to]=g[u][i];
                a[e.to]=min(a[u],e.cap-e.flow);
                if(!inq[e.to]){ que.push(e.to);inq[e.to]=1; }
            }
        }
    }
    if(d[t]==inf) return false;
    flow+=a[t];
    cost+=(long long)d[t]*(long long)a[t];
    for(int u=t;u!=s;u=edges[p[u]].from){
        edges[p[u]].flow+=a[t];
        edges[p[u]^1].flow-=a[t];
    }
    return true;
}
int MCMF::MincostMaxflow(int s,int t,long long& cost){
    int flow=0;
    cost=0;
    while(BellmanFord(s,t,flow,cost));
    return flow;
}