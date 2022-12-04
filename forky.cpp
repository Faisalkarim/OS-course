#include<bits/stdc++.h>
#include<unistd.h>
#include<sys/types.h>

using namespace std;
int main(){


int f1;
f1 = fork();



if(f1>0){
    cout<<"This is root parent "<<getpid()<<endl;
    int f2= fork();
    if(f2==0){
        cout<<"4th child pid "<<getpid()<<" parent pid "<<getppid()<<endl;
        int f5=fork();
        if(f5==0){
            cout<<"5th child pid "<<getpid()<<" parent pid "<<getppid()<<endl;
        }
        if(f5>0){
                int f6= fork();
            if(f6==0){
            cout<<"6th child pid "<<getpid()<<" parent pid "<<getppid()<<endl;
        }
        }
    }
}
 if(f1==0){
    cout<<"1st child pid "<<getpid()<<" parent pid "<<getppid()<<endl;
    int f3= fork();
    if(f3==0){
        cout<<"2nd child pid "<<getpid()<<" parent pid "<<getppid()<<endl;
    }
    if(f3>0){
        int f4=fork();
        if(f4==0){
        cout<<"3rd child pid "<<getpid()<<" parent pid "<<getppid()<<endl;
    }
    }

}




}
