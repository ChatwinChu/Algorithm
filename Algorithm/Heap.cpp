#include <iostream>
#include <algorithm>
#include <ctime>
#include <string>
#include <cmath>
#include <cassert>
#include "LognSort.h"
//#include "SortTestHelper.h"
//#include "insertionSort.h"
using namespace std;

template<typename Item>
class MaxHeap{

    private:
        Item *data;
        int count;
        int capacity;
        void shiftUp(int k){

            while ( k>1 && data[k/2] < data[k]){
                swap(data[k / 2], data[k]);
                k /= 2;
            }
        }
        void shifDown(int k){

            while(k*2<=count&&k*2+1<=count&&( data[k*2]>data[k]||data[k*2+1]>data[k])){
                if(data[k*2]>data[k*2+1]){
                    swap(data[k], data[k * 2]);
                    k = k * 2;
                }
                else{
                    swap(data[k], data[k * 2 + 1]);
                    k = k * 2 + 1;
                }
            }
        }
        void shifDown2(int k){

            while(2*k<=count){

                int j = k * 2;
                if(j+1<=count &&data[j+1]>data[j])
                    j += 1;
                if(data[k]>=data[j])
                    break;
                swap(data[k], data[j]);
                k = j;
            }
        }
    public:
        MaxHeap(int capacity){
            data = new int[capacity+1];
            count = 0;
            this -> capacity = capacity;
        }
        MaxHeap(Item arr[],int n){

            data = new Item[n + 1];
            capacity = n;
            for (int i = 0; i < n;i++)
                data[i + 1] = arr[i];
            count = n;

            for (int i = count / 2; i >= 1;i--)
                shifDown2(i);
        }
        ~MaxHeap(){
            delete[] data;
        }
        int size(){
            return count;
        }
        bool isEmpty(){
            return count == 0;
        }

        void insert(Item item){

            assert(count + 1 <= capacity);
            data[count + 1] = item; 
            count++;
            shiftUp(count);
        }

        Item extractMax(){

        assert(count > 0);

        Item ret = data[1];

        swap(data[1], data[count]);
        count--;
        shifDown2(1);

        return ret;
        }
}; 
template<typename T>
void heapSort1(T arr[],int n){

    MaxHeap<T> maxheap = MaxHeap<T>(n);
    for (int i = 0; i < n;i++)
        maxheap.insert(arr[i]);
    for (int i = n - 1; i >= 0;i--)
        arr[i] = maxheap.extractMax();
}
template<typename T>
void heapSort2(T arr[],int n){

    MaxHeap<T> maxheap = MaxHeap<T>(arr, n);

    for (int i = n - 1; i >= 0;i--)
        arr[i] = maxheap.extractMax();
}
//////////////////////////////////////////////////////////////////
template<typename T>
void __shiftDown3(T arr[],int n,int k){
    while (2*k + 1 < n){

        int j = 2*k + 1;
        if (j + 1 < n && arr[j+1]>arr[j])
            j += 1;
        
        if(arr[k]>=arr[j])
            break;
        
        swap(arr[k], arr[j]);
        k = j;
        
    }
}
template<typename T>
void heapSort3(T arr[],int n){

    for (int i = (n - 1) / 2; i >= 0;i--)
        __shiftDown3(arr, n, i);

    for (int i = n - 1; i > 0;i--){
        swap(arr[i], arr[0]);
        __shiftDown3(arr, i, 0);
    }
}
///////////////////////////////////////////////////////////////////////
template<typename Item>
class IndexMaxHeap{

    private:
        Item *data;
        int *indexs;
        int count;
        int capacity;
        int *reverse;
        void IndexshiftUp(int k){

            while ( k>1 && data[indexs[k/2]] < data[indexs[k]]){
                swap(indexs[k / 2], indexs[k]);
                reverse[indexs[k / 2]] = k / 2;
                reverse[indexs[k]] = k;
                k /= 2;
            }
        }
         
        
        void shifDown(int k){

            while(2*k<=count){

                int j = k * 2;
                if(j+1<=count &&data[indexs[j+1]]>data[indexs[j]])
                    j += 1;
                if(data[indexs[k]]>=data[indexs[j]])
                    break;
                swap(indexs[k], indexs[j]);
                reverse[indexs[k]] = k;
                reverse[indexs[j]] = j;
                k = j;
            }
        }
    public:
        IndexMaxHeap(int capacity){
            data = new int[capacity+1];
            indexs = new int[capacity + 1];
            reverse = new int[capacity + 1];
            for (int i = 0; i <=capacity;i++)
                reverse[i] = 0;
            
               
            this -> capacity = capacity;
        }
        IndexMaxHeap(Item arr[],int n){

            data = new Item[n + 1];
            indexs = new int[n + 1];
            reverse = new int[n + 1];
            capacity = n;
            for (int i = 0; i < n;i++){
                data[i + 1] = arr[i];
                indexs[i+1] = i;
            }

            count = n;

            for (int i = count / 2; i >= 1;i--)
                shifDown(i);


        }
        ~IndexMaxHeap(){
            delete[] data;
            delete[] indexs;
            delete[] reverse;
        }
        int size(){
            return count;
        }
        bool isEmpty(){
            return count == 0;
        }

        void insert(int i,Item item){

            assert(count + 1 <= capacity);
            assert(i + 1 >= 1 && i + 1 <= capacity);

            i += 1;
            data[i] = item;
            indexs[count + 1] = i;
            reverse[i] = count + 1;
            count++;
            IndexshiftUp(count);
            

        }

        Item extractMax(){

        assert(count > 0);

        Item ret = data[indexs[1]];

        swap(indexs[1], indexs[count]);
        reverse[indexs[1]] = 1;
        reverse[indexs[count]] = 0;
        count--;
        shifDown(1);

        return ret;
        }
        int extractMaxIndex(){

        assert(count > 0);

        int ret = indexs[1] - 1;

        swap(indexs[1], indexs[count]);
        reverse[indexs[1]] = 1;
        reverse[indexs[count]] = 0;
        count--;
        shifDown(1);

        return ret;
        }

        void getItem(int i){
            assert(contain(i));
            return data[i + 1];
        }
        bool contain(int i){
            assert(i + 1 >= 1 && i + 1 <= capacity);
            return reverse[i + 1] != 0;
        }
        void change(int i,Item newItem){

            assert(contain(i));
            i += 1;
            data[i] = newItem;
            /*
            for (int j = 1; j <= count;j++){
                if (indexs[j] == i){
                    IndexshiftUp(j);
                    shifDown(j);
                }
            */
            int j = reverse[i];
            IndexshiftUp(j);
            shifDown(j);
            }
};      
int main()
{
    MaxHeap<int> maxheap = MaxHeap<int>(100);
    cout << maxheap.size() << endl;

    srand(time(NULL));
    for (int i = 0; i < 5;i++){
        maxheap.insert(rand() % 100);

    }
    while(!maxheap.isEmpty())
        cout << maxheap.extractMax() << " ";
    cout << endl;


    int n = 800000;
    int *arr = SorTestHelper::generateRandomArray(n,0,10 );
    int *arr2 = SorTestHelper::copyIntArray(arr, n);
    int *arr5 = SorTestHelper::copyIntArray(arr, n);
    int *arr6 = SorTestHelper::copyIntArray(arr, n);

    SorTestHelper::testSort("HeapSort1",heapSort1, arr, n);
    SorTestHelper::testSort("HeapSort2",heapSort2, arr2, n);
    SorTestHelper::testSort("QuickSort3",quickSort3, arr5, n);
    SorTestHelper::testSort("HeapSort3",heapSort3, arr6, n);

    delete[] arr;
    delete[] arr2;
    delete[] arr5;
    delete[] arr6;
    

    return 0;
}
