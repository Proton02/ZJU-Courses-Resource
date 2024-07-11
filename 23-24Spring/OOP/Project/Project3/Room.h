#ifndef _ROOM_H_
#define _ROOM_H_

#include <iostream>
#include <vector>
#include <string>

using namespace std;


class Room {
public:
    bool isroom = false;
    bool ismonster = false;
    bool isprincess = false;
    vector<string> exits;
    Room() : exits({}) {} // 初始化迷宫为全墙,无出口
};

#endif