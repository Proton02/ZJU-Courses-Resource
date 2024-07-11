# 编译程序
g++ -Wall -std=c++11 -o main main.cpp

# 检查是否编译成功
if ($LASTEXITCODE -eq 0) {
    Write-Host "Compilation successful."

    Write-Host "Here are test results:"
    .\main

    # 检查程序是否正常退出
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Execution successful."
    } else {
        Write-Host "Error: Execution failed."
    }
} else {
    Write-Host "Error: Compilation failed."
}
