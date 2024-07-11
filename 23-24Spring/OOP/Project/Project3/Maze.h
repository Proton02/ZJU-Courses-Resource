#ifndef _MAZE_H_
#define _MAZE_H_

#include <algorithm>
#include <cstdlib>
#include <ctime>
#include "Room.h"

// 定义迷宫类
class Maze {
private:
    int N;  // 迷宫大小
    vector<vector<Room>> rooms;

public:
    Maze(int size) : N(size) { 
        rooms.assign(N, vector<Room>(N));
    }
    // 生成随机数
    vector<int> generate_random_num(int N) {
        vector<int> numbers(N);
        for (int i = 1; i <= N - 2; i++) {
            numbers[i] = i;
        }
        srand(time(0));
        random_shuffle(numbers.begin(), numbers.end());
        vector<int> result;
        for (int i = 0; i < 4; i++) {
            result.push_back(numbers[i]);
        }
        return result;
    }
    // 生成迷宫
    void generate_maze() {
        srand(time(0));     // 设置随机种子
        
        vector<int> p_and_m(generate_random_num(N));    // 随机放置一个princess和一个monster
        rooms[p_and_m[0]][p_and_m[1]].isroom = rooms[p_and_m[0]][p_and_m[1]].isprincess = true;
        rooms[p_and_m[2]][p_and_m[3]].isroom = rooms[p_and_m[2]][p_and_m[3]].ismonster = true;

        dfs(1, 1);          // 从起点开始进行深度优先搜索
        rooms[1][0].isroom = true;  // 打开入口和出口
        rooms[N - 2][N - 1].isroom = true;
    }

    // 深度优先搜索
    void dfs(int x, int y) {
        rooms[x][y].isroom = true;
        
        int dx[4] = {0, 0, -1, 1};      // 定义上、下、左、右四个方向
        int dy[4] = {-1, 1, 0, 0};
        
        for (int i = 0; i < 4; i++) {   // 对四个方向进行随机打乱
            int dir = rand() % 4;
            swap(dx[i], dx[dir]);
            swap(dy[i], dy[dir]);
        }
        
        for (int i = 0; i < 4; i++) {   // 遍历四个方向
            int nx = x + dx[i] * 2;
            int ny = y + dy[i] * 2;
            // 判断是否越界或者已经访问过
            if (nx >= 1 && nx <= N - 1 && ny >= 1 && ny <= N - 1 && !rooms[nx][ny].isroom) {
                rooms[x + dx[i]][y + dy[i]].isroom = true; // 打通墙
                dfs(nx, ny); // 递归调用DFS
            }
        }
    }

    // 输出迷宫并设置方向
    void print_maze() {
        int ddx[4] = {1, -1, 0, 0};
        int ddy[4] = {0, 0, -1, 1};
        string dirs[4] = {"down", "up", "left", "right"};
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                for(int k = 0; rooms[i][j].isroom, k < 4; k++){
                    int xx = i + ddx[k], yy = j + ddy[k];
                    if(xx >= 0 && xx < N && yy >= 0 && yy < N && rooms[xx][yy].isroom){
                        rooms[i][j].exits.push_back(dirs[k]);
                    }
                }
                if (rooms[i][j].isroom) {
                    if(rooms[i][j].ismonster){
                        cout << "M ";
                    } else if(rooms[i][j].isprincess){
                        cout << "P ";
                    } else{
                        cout << "  ";
                    }
                } else {
                    cout << "# ";
                }
            }
            cout << endl;
        }
    }

    // 查看当前坐标是否为怪物
    bool is_now_monster(int i, int j){
        if(rooms[i][j].ismonster){
            return true;
        } else {
            return false;
        }
    }

    // 查看当前坐标是否为公主
    bool is_now_princess(int i, int j){
        if(rooms[i][j].isprincess){
            return true;
        } else {
            return false;
        }
    }

    // 输出当前可走的路
    void print_way(int i, int j){
        cout << "The directions you can go are: ";
        for(int k = 0; k < rooms[i][j].exits.size(); k++){
            cout << rooms[i][j].exits[k] << "  ";
        }
        cout << endl;
    }

    // 查看玩家所走的方向是否有路
    bool is_there_way(int i, int j, string direction){
        for(int k = 0; k < rooms[i][j].exits.size(); k++){
            if(rooms[i][j].exits[k] == direction){
                return true;
            }
        }
        return false;
    }

    // 判断是否到达出口
    bool is_now_exit(int i, int j){
        if(i == N - 2 && j == N - 1){
            return true;
        }
        return false;
    }
};

#endif