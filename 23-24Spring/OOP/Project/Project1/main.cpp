#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <fstream>

using namespace std;

struct Student {
    string name;
    int scores[3];
    float average;
};

int main() {
    vector<Student> students(10);
    float Totalscores[3] = {0, 0, 0};
    int courseMin[3] = {5, 5, 5}; // Initialize with max value
    int courseMax[3] = {1, 1, 1}; // Initialize with min value
    
    // Input student records
    ifstream infile("list.txt");
    if(!infile.is_open()){
        cerr << "Read failed" << endl;
        return 0;
    }

    for (int i = 0; i < 10; i++) {
        infile >> students[i].name;
        for (int j = 0; j < 3; j++) {
            infile >> students[i].scores[j];
            Totalscores[j] += students[i].scores[j];
            courseMin[j] = min(courseMin[j], students[i].scores[j]);
            courseMax[j] = max(courseMax[j], students[i].scores[j]);
        }
        students[i].average = (float)(students[i].scores[0] + students[i].scores[1] + students[i].scores[2]) / 3.0;
    }
    cout << "Read sourse file successfully!" << endl;
    infile.close();

    // Output the records
    ofstream outfile("records.txt");
    if(!outfile.is_open()){
        cerr << "Output file failed";
        return 0;
    }

    outfile << "no\tname\tscore1\tscore2\tscore3\taverage\n";
    for (int i = 0; i < 10; i++) {
        outfile << i+1 << "\t" << students[i].name << "\t" ;
        for(int j = 0; j < 3; j++)
            outfile << students[i].scores[j] << "\t \t";
        outfile << students[i].average << endl;
    }
    outfile << "\taverage\t" << Totalscores[0]/10 << "\t \t" << Totalscores[1]/10 << "\t \t" << Totalscores[2]/10 << endl;
    outfile << "\tmin\t \t" << courseMin[0] << "\t \t" << courseMin[1] << "\t \t" << courseMin[2] << endl;
    outfile << "\tmax\t \t" << courseMax[0] << "\t \t" << courseMax[1] << "\t \t" << courseMax[2] << endl;
    cout << "Records have been written into the output file records.txt!" << endl;
    outfile.close();

    return 0;
}
