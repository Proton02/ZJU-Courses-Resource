# 编译程序
g++ -Wall -std=c++11 -o Fraction Fraction.cpp main.cpp

# 检查是否编译成功
if ($LASTEXITCODE -eq 0) {
    Write-Host "Compilation successful."

    # 执行程序，重定向输入
    Write-Host "Here are test results:"
    get-content .\test_data.txt | .\Fraction.exe

    # 检查程序是否正常退出
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Execution successful."
    } else {
        Write-Host "Error: Execution failed."
    }
} else {
    Write-Host "Error: Compilation failed."
}
