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
template<typename T>
void insertionSort(T arr[],int l,int r){
        for (int i = l+1; i <= r;i++){
            int e = arr[i];
            int j;
            for (j = i - 1; j>l && arr[j] > e; j--)
            {
                arr[j+1] = arr[j];
            }
            arr[j] = e;
        }
}