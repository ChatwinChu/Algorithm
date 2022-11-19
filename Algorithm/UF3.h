
#include <iostream>
#include <cassert>
using namespace std;
namespace UF3{

    class UnionFind{

    private:
        int *parent;
        int count;
      //  int *size;
        int *rank;

    public:
        UnionFind(int count){
            parent = new int[count];
            rank = new int[count];
            this->count = count;
            for (int i = 0; i < count;i++){
                parent[i] = i;
                //size[i] = 1;
                rank[i] = 1;
            }
        }

        ~UnionFind(){
            delete[] parent;
           // delete[] size;
            delete[] rank;
        }

        int find(int p){
            assert(p >= 0 && p < count);
            while(p!=parent[p])
                p = parent[p];
            return p;
        }
        bool isConnected(int p,int q){
            return find(q) == find(p);                                                                                        
        }
        void unionElement(int p,int q){
            int pRoot = find(p);
            int qRoot = find(q);

            if(pRoot==qRoot)
                return;

            /*if(size[pRoot] < size[qRoot]){
                parent[pRoot] = qRoot;
                size[qRoot]+=size[pRoot];
            }
            else{
                parent[qRoot] = pRoot;
                size[pRoot] += size[qRoot];
            }*/
            if(rank[pRoot] < rank[qRoot]){
                parent[pRoot] = qRoot;
            }
            else if (rank[pRoot] > rank[qRoot]){
                parent[qRoot] = pRoot;
            }
            else{
               parent[pRoot] = qRoot;
               rank[qRoot]+=1;
            }

        } 
    };
}