#include <iostream>
#include <string>
using namespace std;
int main(){
    string s;
    cin>>s;
    int q[100],front=0,rear=-1;
    int freq[256]={0};
    for(int i=0;i<s.size();i++){
        char c=s[i];
        freq[c]++;
        q[++rear]=c;
        while(front<=rear && freq[q[front]]>1) front++;
        if(front>rear) cout<<-1<<" ";
        else cout<<(char)q[front]<<" ";
    }
}
