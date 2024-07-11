#ifndef _DIARY_H_
#define _DIARY_H_

#include "diary_entity.h"

class diary{
private:
    vector<diary_entity> record;
    string filename;
    void loadFile();
    void saveFile();
    bool isValidDate(string input);

public:
    diary(const string& file);
    void pdadd();
    void pdlist();
    void pdshow();
    void pdremove();
};

#endif