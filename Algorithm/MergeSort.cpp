#include <iostream>
#include <algorithm>
#include "SortTestHelper.h"
#include "insertionSort.h"
using namespace std;

template<typename T>
void __merge(T arr[],int l,int mid ,int r){

    T aux[r - l + 1];
    for (int i = l; i <= r;i++)
        aux[i-l] = arr[i];

    int i = l, j = mid + 1;
    for (int k = l; k <= r;k++){

        if(i>mid){
            arr[k] = aux[j-l];
            j++;
        }
        else if(j>r){
            arr[k] = aux[i-l];
            i++;
        }
        else if(aux[i-l]<aux[j-l]){
            arr[k] = aux[i-l];
            i++;
        }
        else{
            arr[k] = aux[j-l];
            j++;
        }
    }
}
template<typename T>
void __mergeSort(T arr[],int l,int r){

   // if( l >= r )
   //     return;
    if( r - l <= 15 ){
        insertionSort(arr, l, r);
        return;
    }

    int mid = (l + r) / 2;
    __mergeSort(arr, l, mid);
    __mergeSort(arr, mid + 1, r);
    if(arr[mid] > arr[mid+1])
         __merge(arr, l, mid, r);
}

template<typename T>
void mergeSort(T arr[],int n){

    __mergeSort(arr, 0, n - 1);
}
///////////////////////////////////////////////////
/*template<typename T>
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
}*/
/////////////////////////////////////////////////////
template<typename T>
void mergeSortBU(T arr[],int n){
    for (int sz = 1; sz <= n; sz += sz)
        for (int i = 0; i + sz < n; i += sz + sz)
            __merge(arr, i, i + sz - 1,min(i + sz + sz - 1, n - 1 ));
}
int main()
{   
    int n = 100000;
    int *arr = SorTestHelper::generateRandomArray(n,0,n );
    int *arr2 = SorTestHelper::copyIntArray(arr, n);

    SorTestHelper::testSort("mergeSortBU", mergeSortBU, arr, n);
    SorTestHelper::testSort("MergeSort", mergeSort, arr2, n);
    delete[] arr;
    delete[] arr2;
    return 0;
    return 0;
}
