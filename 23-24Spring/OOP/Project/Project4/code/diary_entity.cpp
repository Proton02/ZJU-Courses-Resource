#include "diary_entity.h"

diary_entity::diary_entity(string date, string content){
    this->date = date;
    this->content = content;
}

string diary_entity::getdate() const {
    return date;
}

string diary_entity::getcontent() const {
    return content;
}

diary_entity diary_entity::parseEntry(string entryString) {
    size_t pos = entryString.find(' ');
    string date = entryString.substr(0, pos);
    string content = entryString.substr(pos + 1);
    return diary_entity(date, content);
}

string diary_entity::getDiaryEntity() const {
    return date + content;
}
