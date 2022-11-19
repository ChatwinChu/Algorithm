#include <iostream>
#include <algorithm>
#include <string>
#include "SortTestHelper.h"

using namespace std;

int main()
{
    int n = 10000;
    int *arr = SorTestHelper::generateRandomArray(n, 0, n);
   // selectionSort(arr, n);
    SorTestHelper::printArray(arr, n);

    delete[] arr;
        return 0;
}
