#include <iostream>
#include <vector>
/* run this program using the console pauser or add your own getch, system("pause") or input loop */
using namespace std;
int main(int argc, char** argv) {
	//int c=0;
	//cin>>c;
	//while(c-->0){
	cout <<"www";
	int party=0;
	
    vector<int> par;
    int a=0,b=0,sum=0;
    cin>>a;
    int *day = new int(a);
    cin >> party;
    for(int i=0;i<party;i++){
    	cin>>b;
    	par.push_back(b);
    
	}
	
	for(int j=1;j<=a;j++){
		day[j]=0;
		if(j%7==6||j%7==0)
		   continue;
		for(int i=0;i<party;i++){
		
			if(j%par[i]==0){
			
				day[j]++;
			//	cout<<j<<" ";
				}
		}
	}
	for(int i=1;i<=a;i++){
		if(day[i]>0){
	//	cout<<i<<" ";
			sum++;
	}
	}
	cout<<"*"<<sum<<endl;
     
	
	
//}
	return 0;
}