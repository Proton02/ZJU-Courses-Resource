# 编译程序
g++ -Wall -std=c++11 -o PersonalDiary main.cpp diary.cpp diary_entity.cpp

# 检查是否编译成功
if ($LASTEXITCODE -eq 0) {
    Write-Host "Compilation successful."

    # 提示用户是否使用重定向输入
    $redirect = Read-Host "Do you want to use test file? (yes/no)"

    if ($redirect -eq "yes") {
        # 执行程序，重定向输入
        Write-Host "Here are test results:"
        get-content .\test_input.txt | .\PersonalDiary.exe
    } else {
        # 直接执行程序
        Write-Host "You can manage you own diary now!"
        .\PersonalDiary.exe
    }

    # 检查程序是否正常退出
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Execution successful."
    } else {
        Write-Host "Error: Execution failed."
    }
} else {
    Write-Host "Error: Compilation failed."
}
