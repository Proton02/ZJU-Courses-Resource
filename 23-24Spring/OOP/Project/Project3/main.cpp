#include "Maze.h"


void Game(){
    int size;
    cout << "Enter the size of the maze: ";
    cin >> size;
    if(size < 10){          // 为了保证游戏体验，将地图大小设置为奇数且大于10
        size = 11;
    }
    if(size % 2 == 0){
        size++;
    }
    Maze maze(size);
    maze.generate_maze();
    cout << "The maze is as follows:" << endl;
    maze.print_maze();
    int i = 1, j = 0;           // 设置起始位置

    while (true) {
        cout << "You are currently in the room (" << i << "," << j << "). ";
        
        maze.print_way(i, j);   // 输出当前可走的方向
        string input;
        cout << "Enter the direction you are taking: " << endl;
        cin >> input;

        if (input == "go") {
            string direction;
            cin >> direction;
            if(maze.is_there_way(i, j, direction)){     // 查看玩家所走的方向是否有路 
                if (direction == "down") {
                    i++;
                } else if (direction == "up") {
                    i--;
                } else if (direction == "left") {
                    j--;
                } else if (direction == "right") {
                    j++;
                }
                if(maze.is_now_monster(i, j)){          // 看我们是否遇到了怪物，如果遇到怪物就结束游戏
                    cout << "Game Over!!! You meet with the monster." << endl;
                    break;
                }else if(maze.is_now_princess(i, j)){   // 看我们是否救到了公主，如果就带上公主继续游戏
                    cout << "You meet with the princess!!! Please get out of here with her." << endl;
                }else if(maze.is_now_exit(i, j)){       // 看是否到达了出口
                    cout << "You win!!!";
                    break;
                }
            } else {
                cout << "There is no way!!! Please change the direction." << endl;
            }
        } else {
            cout << "Invalid command!!! Please enter go + <direction>." << endl;
        }
    }
}

int main() {
    Game();     // 开始游戏
    return 0; 
}
