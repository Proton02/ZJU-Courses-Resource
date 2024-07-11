#ifndef _DIARY_ENETITY_H_
#define _DIARY_ENETITY_H_

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <algorithm>
#include <regex>

using namespace std;

class diary_entity{
private:
    string date;
    string content;

public:
    diary_entity(string date, string content);
    string getdate() const;
    string getcontent() const;
    static diary_entity parseEntry(string entryString);
    string getDiaryEntity() const;
};

#endif