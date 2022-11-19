#include <iostream>
#include <algorithm>
#include "SortTestHelper.h"
using namespace std;

template<typename T>
void insertionSort(T arr[],int n){

    for (int i = 1; i < n;i++){

        T e = arr[i];
        int j;
        for (j = i; j > 0 && arr[j-1]>e;j--){
            //if(arr[i]<arr[j])
               // swap(arr[j], arr[j-1]);
           // else
             //   break;
                arr[j] = arr[j - 1];
            }
            arr[j] = e;
    }
}

///////////////////////////////////////////////////////
template<typename T>
void selectionSort(T arr[],int n){
    
    for (int i=0; i < n;i++){

        int minIndex = i;
        for (int j = i + 1; j < n;j++){
            if( arr[j]<arr[minIndex]){
                minIndex = j;
                
            }
        //cout <<i<<" "<< minIndex << endl;
        }
        swap(arr[i], arr[minIndex]);
    }
}
int main()
{   
    int n = 10000;
    int *arr = SorTestHelper::generateNearlyOrderArray(n, 100);
    int *arr2 = SorTestHelper::copyIntArray(arr, n);

    SorTestHelper::testSort("InsertionSort", insertionSort, arr, n);
    SorTestHelper::testSort("SelectionSort", selectionSort, arr2, n);
    delete[] arr;
    delete[] arr2;
    return 0;
}
