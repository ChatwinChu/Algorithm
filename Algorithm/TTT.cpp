#include <iostream>
using namespace std;

int main()
{
    int a = 1, b = 0;
    if(!a)
        b = b + 1;
    else if (a == 0){
    if(a) b = b + 2;
    }
    else
        b = b + 3;
    printf("%d,%d", a, b);
    return 0;
}
