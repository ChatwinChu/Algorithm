#include <iostream>
using namespace std;

int j(int i){
    if(i==10)
        return i;
    return j(i++);
}
int main()
{
    cout<<j(0);

    return 0;
}
