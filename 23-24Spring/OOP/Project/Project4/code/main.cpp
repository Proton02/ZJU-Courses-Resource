#include "diary.h"

int main(){
    string command;
    string filename = "Diary.txt";
    diary diary(filename);
    cout << "Welcome to Personal Dairy!" << endl;
    cout << "1.pdadd: Add an entity" << endl;
    cout << "2.pdlist: List entries" << endl;
    cout << "3.pdshow: Show an entry" << endl;
    cout << "4.pdremove: Remove an entry" << endl;
    cout << "5.quit: If you want to exit" << endl; 
    
    while(true){
        cout << "Please enter command: " << endl;
        cin.clear();
        cin >> command;
        if(command == "pdadd"){
            diary.pdadd();
        }else if(command == "pdlist"){
            diary.pdlist();
        }else if(command == "pdshow"){
            diary.pdshow();
        }else if(command == "pdremove"){
            diary.pdremove();
        }else if(command == "quit"){
            cout << "You have quit from the Personal Diary!" << endl;
            break;
        }else{
            cout << "Plese enter vailed command!" << endl;
        }
    }
}


