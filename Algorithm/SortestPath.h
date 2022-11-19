#include <iostream>
#include <stack>
#include <vector>
#include <cassert>
#include <queue>

using namespace std;

template<typename Graph>
class SortestPath{
private:
    Graph &G;
    bool *visited;
    int s;
    int *ord;
    int *from;

    
public:

    SortestPath(Graph &graph,int s):G(graph){

        assert(s >= 0 && s < G.V());

        visited = new bool[G.V()];
        from = new int[G.V()];
        ord = new int[G.V()];

        for (int i = 0; i < G.V();i++){
            visited[i] = false;
            from[i] = -1;
            ord[i] = -1;
        }
        this->s = s;

        queue<int> q;
        q.push(s);
        visited[s] = true;
        ord[s] = 0;

        while(!q.empty()){

            int v = q.front();
            q.pop();
            
            typename Graph::adjInterator adj(G, v);
            for (int i = adj.begin(); !adj.end();i=adj.next())
                if(!visited[i]){
                    q.push(i);
                    visited[i] = true;
                    from[i] = v;
                    ord[i] = ord[v] + 1;

                }
            
        }
    }
    ~SortestPath(){
        delete[] visited;
        delete[] from;
        delete[] ord;
    }
    bool hasPath(int w){
        assert(w >= 0 && w < G.V());
        return visited[w];
    }
    void path(int w,vector<int> &vec){

        stack<int> s;

        int p = w;
        while(p!=-1){
            s.push(p);
            p = from[p];
        }

        vec.clear();
        while(!s.empty()){
            vec.push_back(s.top());
            s.pop();
        }
    }
    void showPath(int w){

        vector<int> vec;
        path(w, vec);
        for (int i = 0; i < vec.size();i++){
            cout << vec[i];
            if(i==vec.size()-1)
                cout << endl;
            else
                cout << " -> ";
        }
    }
    int length(int w){
        assert(w >= 0 && w < G.V());
        return ord[w];
    }


};