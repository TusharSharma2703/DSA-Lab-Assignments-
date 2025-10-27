#include <iostream>
using namespace std;
struct Node{
    int data;
    Node* next;
};
Node* head=NULL;
void insertEnd(int x){
    Node* t=new Node{x,NULL};
    if(!head){ head=t; return; }
    Node* p=head;
    while(p->next) p=p->next;
    p->next=t;
}
int main(){
    int n,x,key;
    cin>>n;
    for(int i=0;i<n;i++){ cin>>x; insertEnd(x); }
    cin>>key;
    int cnt=0;
    Node* p=head,*prev=NULL;
    while(p){
        if(p->data==key){
            cnt++;
            if(prev) prev->next=p->next;
            else head=p->next;
            delete p;
            p=(prev?prev->next:head);
        }else{ prev=p; p=p->next; }
    }
    cout<<"Count: "<<cnt<<"\n";
    p=head;
    while(p){ cout<<p->data; if(p->next) cout<<"->"; p=p->next; }
    cout<<"\n";
}
