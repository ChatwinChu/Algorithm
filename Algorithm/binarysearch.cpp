#include <iostream>
#include "SortTestHelper.h"
#include "LognSort.h"

using namespace std;

template<typename T>
int binarySearch(T arr[],int n,T i){

    int l = 0, r= n - 1;
    
    
    while(r>=l){

        //int mid = (r + l) / 2;
        int mid = l + (r - l) / 2;
        if(arr[mid]==i){
            return mid;
        }
        if(arr[mid]>i)
            r = mid - 1;
        else
            l = mid + 1;
        
    }

    return -1;

}
int main()
{
    int n = 100;
    int *arr1= SorTestHelper::generateRandomArray(n, 0, 100);
    mergeSort(arr1, n);
    SorTestHelper::printArray(arr1, n);

    int i = binarySearch(arr1, n, 99);
    cout << i;

    return 0;
}
