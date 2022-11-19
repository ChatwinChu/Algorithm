#include <iostream>
#include <ctime>
#include <string>
#include "SparseGraph.h"
#include "DenseGraph.h"
#include "ReadGraph.h"
#include "Conponent.h"
#include "Path.h"
#include "SortestPath.h"

using namespace std;

int main(){

    /*
    int N = 20;
    int M = 100;

    srand(time(NULL));
    
    SparseGraph g1(N, false);
    for (int i = 0; i < M;i++){
        int a = rand() % N;
        int b = rand() % N;
        g1.addEdge(a, b);
    }
    for (int v = 0; v < N;v++){
        cout << v << " : ";
        SparseGraph::adjInterator adj(g1, v);
        for (int w = adj.begin(); !adj.end();w=adj.next())
            cout << w << " ";
        cout << endl;
    }
    cout << endl;

    DenseGraph g2(N, false);
    for (int i = 0; i < M;i++){
        int a = rand() % N;
        int b = rand() % N;
        g2.addEdge(a, b);
    }
    for (int v = 0; v < N;v++){
        cout << v << " : ";
        DenseGraph::adjInterator adj(g2, v);
        for (int w = adj.begin(); !adj.end();w=adj.next())
            cout << w << " ";
        cout << endl;
    }
    cout << endl;
    */

    string filename = "testG1.txt";

    SparseGraph g3(13, false);
    ReadGraph<SparseGraph> readGraph1(g3, filename);
    Conponent<SparseGraph> conponent1(g3);
    Path<SparseGraph> dfs(g3, 0);
    
    cout << "testG1,Conponent Count: " << conponent1.count() << endl;
    cout << "DFS ";
    dfs.showPath(5);

    SortestPath<SparseGraph> bfs(g3, 0);
    cout << "BFS ";
    bfs.showPath(5);
    g3.show();

    DenseGraph g4(13, false);
    ReadGraph<DenseGraph> readGraph2(g4, filename);
    Conponent<DenseGraph> conponent2(g4);
    Path<DenseGraph> dfs2(g4, 0);
    cout << "testG1,Conponent Count: " << conponent2.count() << endl;
    cout << "DFS ";
    dfs2.showPath(5);
    g4.show();

    

    return 0;
}