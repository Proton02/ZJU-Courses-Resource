#!/bin/bash

# 编译程序
g++ -Wall -std=c++11 -o Vector Vector.cpp main.cpp

# 检查是否编译成功
if [ $? -eq 0 ]; then
    echo "Compilation successful."

    # 执行程序
    echo "Here are test results:"
    ./Vector

    # 检查程序是否正常退出
    if [ $? -eq 0 ]; then
        echo "Execution successful."
    else
        echo "Error: Execution failed."
    fi
else
    echo "Error: Compilation failed."
fi
