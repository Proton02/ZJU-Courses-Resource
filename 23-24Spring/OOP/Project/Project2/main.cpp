#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <fstream>
#include <sstream>
#include <map>
#include <iomanip>
#include <math.h>
#define MAX 10000

using namespace std;

struct score{
    string id_name;
    int data = 0, num = 0, max = 0, min = 5;
};

struct student{
    string name;
    vector<score> grade;
};

int main() {
    vector<student> students;
    vector<score> course; // 存储每门课程的信息
    map<string, int> course_total_scores;
    // 打开文件
    ifstream infile("list.txt");
    if (!infile.is_open()) {
        cerr << "读取文件失败" << endl;
        return 0;
    }

    string line, name;
    score sc;
    // 逐行读取文件
    while (getline(infile, line)) {
        stringstream ss(line);
        student s;
        ss >> name; // 读取学生姓名
        s.name = name;
        
        while (ss >> sc.id_name >> sc.data) { // 逐个读取课程名和分数
            sc.num++;
            if (sc.data > sc.max) sc.max = sc.data; // 计算最高分
            if (sc.data < sc.min) sc.min = sc.data; // 计算最低分
            s.grade.push_back(sc); // 将课程得分添加到学生的成绩中
            
            // 更新课程信息
            course_total_scores[sc.id_name] += sc.data;
        }
        students.push_back(s); // 将学生信息添加到学生向量中
    }
    for (const auto& pair : course_total_scores) {
        string id_name = pair.first;
        score course_info;
        course_info.id_name = id_name;
        course.push_back(course_info);
    }

    cout << "Read sourse file successfully!" << endl;
    infile.close();

    int num_t = 0;
    for(int i = 0; i < course.size(); i++){
        if(course[i].id_name.length() > num_t)
            num_t = course[i].id_name.length();
    }

    // first line
    cout << "no\tname\t";
    for(int i = 0; i < course.size(); i++)
        cout << setw(num_t) << left << course[i].id_name << string(1, '\t');
    cout << "average\n";

    // each student
    for(int i = 0; i < students.size(); i++){
        double student_avg = 0;
        cout << i+1 << "\t" << students[i].name << "\t";
        int m = course.size();
        int n = students[i].grade.size();
        for(int j = 0; j < m; j++){ // course
            int flag = 0;
            for(int k = 0; k < n; k++){ // grade
                if(students[i].grade[k].id_name == course[j].id_name){
                    flag = 1;
                    course[j].num++;
                    student_avg += students[i].grade[k].data;
                    course[j].data += students[i].grade[k].data;
                    course[j].min = min(course[j].min, students[i].grade[k].data);
                    course[j].max = max(course[j].max, students[i].grade[k].data);
                    cout << students[i].grade[k].data << string(2, '\t');
                }
            }
            if(flag == 0)
                cout << "-" << string(2, '\t');
        }
        cout << fixed << setprecision(2) << setw(4) << (double)student_avg / n << endl;
    }

    cout << "\taverage\t";
    for(int i = 0; i < course.size(); i++)
        cout << fixed << setprecision(2) << (double)course[i].data/course[i].num << string(2, '\t');
    cout << endl << "\t";

    cout << "min\t";
    for(int i = 0; i < course.size(); i++)
        cout << course[i].min << string(2, '\t');
    cout << endl << "\t";

    cout << "max\t";
    for(int i = 0; i < course.size(); i++)
        cout << course[i].max << string(2, '\t');
    cout << endl;

}
