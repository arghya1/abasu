#include<iostream>
#include<cmath>
using namespace  std;
int main()
{
//int x[5]={1,2,3,4,5},i;
//for(int i=0;i<5;i++;)
//cout<<x[i]<<"MY syntax"


char name[50]="lupin";
//print name using loop
//cout<<"enter name";
//cin>> name;
//for(int i=0;i<6;i++)
//	cout<< name[i] << endl;
name[3]='e';
name[4]='\0';
for(int i=0;i<6;i++)
	cout<< name[i] << endl;
return 0;}
