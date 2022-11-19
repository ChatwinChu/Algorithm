#include <iostream>
#include <cassert>
using namespace std;

namespace UF1{

class UnionFind{
    private:
        int* id;
        int count;
    public:
        UnionFind(int n){
            count = n;
            id = new int[n];
        }
        ~UnionFind(){
            delete[] id;
        }
        int find(int p ){
            assert(p >= 0 && p < count);
            return id[p];
        }
        bool isConnected(int p,int q){
            return find(p) == find(q);
        }

        void unionElement(int p,int q){

            int qID = find(q);
            int pID = find(p);

            if(pID==qID)
                return;
            for (int i = 0; i < count;i++)
                if(id[i]==pID)
                    id[i] = qID;
                     
        }
};


}