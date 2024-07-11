#!/bin/bash

# 编译程序
g++ -Wall -std=c++11 -o PersonalDiary main.cpp diary.cpp diary_entity.cpp

# 检查是否编译成功
if [ $? -eq 0 ]; then
    echo "Compilation successful."

    # 提示用户是否使用重定向输入
    read -p "Do you want to use test file? (yes/no): " redirect

    if [ "$redirect" = "yes" ]; then
        # 执行程序，重定向输入
        echo "Here are test results:"
        ./PersonalDiary < test_input.txt
    else
        # 直接执行程序
        echo "You can manage you own diary now!"
        ./PersonalDiary
    fi

    # 检查程序是否正常退出
    if [ $? -eq 0 ]; then
        echo "Execution successful."
    else
        echo "Error: Execution failed."
    fi
else
    echo "Error: Compilation failed."
fi
