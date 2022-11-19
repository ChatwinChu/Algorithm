#include <iostream>
#include <ctime>
#include <sstream>
#include <string>
using namespace std;

int main()
{
    srand(time(NULL));
    int number = rand() % 900+100;
    int n1;
    string s1,s2;
    
    stringstream ss;
    ss << number;
    ss >> s2;
    ss.clear();

    //cout <<s2<<endl;

    while(1){
    
    scanf("%d", &n1);
    ss << n1;
    ss >> s1;
    ss.clear();
    //A
    int A = 0;
    bool Aj[3]={};
    for (int i = 0; i < 3;i++){
        if(s1[i]==s2[i]){
            A++;
            Aj[i] = true;
        }
        else
            Aj[i] = false;
    }
    //B
    int B = 0;
    
    for (int i = 0; i < 3;i++){
        for (int j = 0; j < 3; j++){
            if(Aj[j])
                continue;
            if (s1[i] == s2[j] && i != j)
                B++;
        }
    }
    if(A==3)
        break;
    cout << A << "A" << B << "B" << endl;
    }

    return 0;
}
