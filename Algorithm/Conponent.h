#include <iostream>
#include <cassert>

using namespace std;

template<typename Graph>
class Conponent{
private:
    Graph &G;
    bool *visited;
    int ccount;
    int *id;

    void dfs(int v){

        visited[v] = true;
        id[v] = ccount;

        typename Graph::adjInterator adj(G,v);

        for (int i = adj.begin();!adj.end();i=adj.next())
            if(!visited[i])
                dfs(i);
    }
public:

    Conponent(Graph &graph):G(graph){
        visited = new bool[G.V()];
        id = new int[G.V()];
        ccount = 0;
        for (int i = 0; i < G.V();i++){
            visited[i] = false;
            id[i] = -1;
        }    

        for (int i = 0; i < G.V();i++)
            if(!visited[i]){
                dfs(i);
                ccount++;
            }
        
    }
    ~Conponent(){
        delete[] visited;
        delete[] id;
    }
    int count(){
        return ccount;
    }
    bool isConnected(int v,int w){
        return id[v] == id[w];
    }

};
