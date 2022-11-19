#include <iostream>
#include <algorithm>
#include <ctime>
#include "SortTestHelper.h"
#include "insertionSort.h"
using namespace std;


template<typename T>
int __partition(T arr[],int l,int r){

    swap(arr[l], arr[rand() % (r - l + 1) + l]);
    T v = arr[l];
    int j=l;
    for (int i = l + 1; i <= r;i++){
        if(arr[i]<v){
            swap(arr[j + 1], arr[i]);
            j++;
        }
    }
            swap(arr[j], arr[l]);
    return j;
}
template<typename T>
void __quickSort(T arr[],int l,int r){

  // if(l>=r)
   //     return;
   if(r-l<=15){
       insertionSort(arr, l, r);
       return;
   }
    int p = __partition(arr, l, r);
    __quickSort(arr, l, p-1);
    __quickSort(arr, p+1, r);
}
template<typename T>
void quickSort(T arr[],int n){

    srand(time(NULL));
    __quickSort(arr,0, n-1);
}
///////////////////////////////////////////////////////
template<typename T>
int __partition2(T arr[],int l,int r){

    swap(arr[l], arr[rand() % (r - l + 1) + l]);
    T v = arr[l];

    int i = l, j = r;
    while(1){
        while(i<=r&&arr[i]<=v)
            i++;
        while(j>=l+1&&arr[j]>=v)
            j--;
        if(i>j)
            break;
        swap(arr[i], arr[j]);
        i++;
        j--;
    }
    swap(arr[l], arr[j]);

    return j;
}
template<typename T>
void __quickSort2(T arr[],int l,int r){

  // if(l>=r)
   //     return;
   if(r-l<=15){
       insertionSort(arr, l, r);
       return;
   }
    int p = __partition2(arr, l, r);
    __quickSort2(arr, l, p-1);
    __quickSort2(arr, p+1, r);
}
template<typename T>
void quickSort2(T arr[],int n){

    srand(time(NULL));
    __quickSort2(arr,0, n-1);
}
///////////////////////////////////////////////////////
template<typename T>
void __quickSort3(T arr[],int l,int r){

  // if(l>=r)
   //     return;
   if(r-l<=15){
       insertionSort(arr, l, r);
       return;
   }
    //partition
    swap(arr[l], arr[rand() % (r - l + 1) + l]);
    T v = arr[l];

    int lt = l;
    int gt = r + 1;
    int i = l + 1;
    while (i<gt){
        if(arr[i]>v){
            swap(arr[i], arr[gt-1]);
            gt--;
        }
        else if(arr[i]<v){
            swap(arr[i], arr[lt + 1]);
            i++;
            lt++;
        }
        else{
            i++;
        }
    }
    swap(arr[l], arr[lt]);
    __quickSort3(arr, l, lt-1);
    __quickSort3(arr,gt, r);
}   
template<typename T>
void quickSort3(T arr[],int n){

    srand(time(NULL));
    __quickSort3(arr,0, n-1);
}
////////////////////////////////////////////////////////
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
    if(r-l<=15){
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
int main()
{   
    int n = 70000000;
    int *arr = SorTestHelper::generateRandomArray(n,0,10 );
    int *arr2 = SorTestHelper::copyIntArray(arr, n);
    int *arr5 = SorTestHelper::copyIntArray(arr, n);
    int *arr6 = SorTestHelper::copyIntArray(arr, n);

    SorTestHelper::testSort("QuickSort",quickSort, arr, n);
    SorTestHelper::testSort("QuickSort2",quickSort2, arr2, n);
    SorTestHelper::testSort("QuickSort3",quickSort3, arr5, n);
    SorTestHelper::testSort("MergeSort",mergeSort, arr6, n);

    delete[] arr;
    delete[] arr2;
    delete[] arr5;
    delete[] arr6;

    int *arr3 = SorTestHelper::generateNearlyOrderArray(n,100);
    int *arr4 = SorTestHelper::copyIntArray(arr3, n);

    SorTestHelper::testSort("QuickSort",quickSort, arr3, n);
    SorTestHelper::testSort("QuickSort2",quickSort2, arr4, n);
    delete[] arr3;
    delete[] arr4;
    return 0;
}
