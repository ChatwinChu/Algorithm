#include <iostream>
#include <algorithm>
#include "Student.h"
#include "SortTestHelper.h"
using namespace std;

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
    int *arr = SorTestHelper::generateRandomArray(n, 0, n);
    //selectionSort(arr, n);
  //  SorTestHelper::printArray(arr, n);

    

    Student d[4] = {{"D", 20}, {"C", 20}, {"S", 88}, {"F", 48}};
    
    selectionSort(d, 4);
    SorTestHelper::printArray(d, 4);

    SorTestHelper::testSort("SelectionSort", selectionSort, arr, n);

    delete[] arr;

    return 0;
}
