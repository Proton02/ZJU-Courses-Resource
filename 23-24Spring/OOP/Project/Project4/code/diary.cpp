#include "diary.h"

void diary::loadFile(){
    string line;
    ifstream file(filename);
    if(file.is_open()){
        while(getline(file, line)){
            record.push_back(diary_entity::parseEntry(line));
        }
        file.close();
    }
}

void diary::saveFile(){
    ofstream file(filename);
    if(file.is_open()){
        for(auto r : record){
            file << r.getDiaryEntity() << endl;
        }
        file.close();
    }
}

bool diary::isValidDate(string input) { // 正则表达式匹配日期格式 YYYY-MM-DD
    regex pattern("\\d{4}-\\d{2}-\\d{2}");
    return regex_match(input, pattern);
}

diary::diary(const string& file) : filename(file){
    loadFile();
}

void diary::pdadd(){
    string date, content;
    cout << "Please enter date (YYYY-MM-DD)" << endl;
    while(cin >> date){
        if(date == ".") break;
        if(isValidDate(date)){
            getline(cin, content);
            diary_entity entity(date, content);
            auto it = find_if(record.begin(), record.end(), [&](diary_entity e){return e.getdate() == entity.getdate();});
            if(it == record.end()){     // find_it 函数返回 end
                record.push_back(entity);
            }else{  // 覆盖
                *it = entity;
            }
            cout << "Add successfully!" << endl;
            saveFile();
        }else{
            cout << "Plese enter vailed date!" << endl;
        }
    }
}

void diary::pdlist(){
    string start, end;
    cout << "Enter all or start and end date:" << endl;
    cin >> start;
    if(start == "all"){
        start = "0000-00-00";
        end = "9999-99-99";
    }else{
        cin >> end;
    }
    if(isValidDate(start) && isValidDate(end)){
        vector<diary_entity> ordered_record;
        for(auto r : record) {
            if(r.getdate() >= start && r.getdate() <= end) {
                ordered_record.push_back(r);
            }
        }
        sort(ordered_record.begin(), ordered_record.end(), [&](diary_entity a, diary_entity b) {
            return a.getdate() > b.getdate(); // Sort in descending order
        });

        bool flag = false;
        for(auto r : ordered_record){
            if(r.getdate() >= start && r.getdate() <= end){
                flag = true;
                cout << r.getdate() << " " << r.getcontent() << endl;
            }
        }
        if(flag == false){
            cout << "Can't list! Diary for date between " << start << " and " << end << endl;
        }
    }else{
        cout << "Plese enter vailed date!" << endl;
    }
}

void diary::pdshow(){
    string date;
    cout << "Enter date to show:" << endl;
    cin >> date;
    if(isValidDate(date)){
        auto it = find_if(record.begin(), record.end(), [&](diary_entity entity){return entity.getdate() == date;});
        if(it == record.end()){     // find_it 函数返回 end 说明没找到
            cout << "Can't show! Diary not find in date " << date << endl;    
        }else{
            cout << it->getdate() << " " << it->getcontent() << endl;
        }
    }else{
        cout << "Plese enter vailed date!" << endl;
    }
}

void diary::pdremove(){
    string date;
    cout << "Enter date to remove: " << endl;
    cin >> date;
    if(isValidDate(date)){
        auto it = find_if(record.begin(), record.end(), [&](diary_entity entity){return entity.getdate() == date;});
        if(it == record.end()){
            cout << "Can't remove! Diary not find in date " << date << endl; 
        }else{
            record.erase(it);
            saveFile();
            cout << "Remove diary in date " << date << " successfully!" << endl;
        }
    }else{
        cout << "Plese enter vailed date!" << endl;
    }
}