.ORIG x3000
    LD R1, str1         ; 加载第一个字符串的地址到寄存器 R1
    LDR R1, R1, #0
    LD R2, str2         ; 加载第二个字符串的地址到寄存器 R2
    LDR R2, R2, #0
    AND R0, R0, #0      ; R0用来计26英文字符的数
    AND R7, R7, #0      ; R7用来判断是否遍历完26英文字符
    ADD R1, R1, #-1 
    ADD R2, R2, #-1
    
LOOP1                   ; 第一个字符串
    ADD R1, R1, #1      ; R1指向下一个地址
    LDR R3, R1, #0      ; 加载当前地址的字符
    BRz LOOP2           ; 如果是空的就跳到LOOP2
    ADD R3, R3, #-15    ; 判断空格
    ADD R3, R3, #-15
    ADD R3, R3, #-2
    BRz LOOP1           ; 如果是空格就重新循环
    LDR R3, R1, #0      ; 如果不是空格就恢复R3
    ADD R3, R3, #-15    ; 判断大小写
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    BRnz BIG_TO_SMALL1  ; 如果是大写就加32变成小写
    ADD R3, R3, #-7     ; 如果不是大写就将字符变成字母表中的序号
    LD R4, ARY          ; 将计数数组的首地址加到R4中
    ADD R4, R3, R4      ; 将字符对应数组中的地址写入R4
    LDR R5, R4, #0      ; R5对应的就是R4中地址处的数据
    ADD R5, R5, #1      ; 给R5加一
    STR R5, R4, #0      ; 再传回对应地址处
    BRnzp LOOP1         ; 重复循环
    
LOOP2                   ; 第二个字符串，思路相同
    ADD R2, R2, #1     
    LDR R3, R2, #0     
    BRz LOOPED          ; 如果是空的就结束循环开始判断
    ADD R3, R3, #-15   
    ADD R3, R3, #-15
    ADD R3, R3, #-2
    BRz LOOP2         
    LDR R3, R2, #0      
    ADD R3, R3, #-15   
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    BRnz BIG_TO_SMALL2 
    ADD R3, R3, #-7
    LD R4, ARY
    ADD R4, R3, R4      
    LDR R5, R4, #0      
    ADD R5, R5, #-1     ; 第二个字符串减1     
    STR R5, R4, #0       
    BRnzp LOOP2
    
LOOPED                  ; 循环结束
    LD R5, ARY          ; 将R5重新指向计次数组首地址
    BRnzp CHK           ; 开始判断

CHK
    LDR R6, R5, #0      ; 将数据写入R6
    BRnp OUTPUT_NO      ; 发现有不是0的直接输出NO
    ADD R5, R5, #1      ; R5指向下一个字符对应的数组中的位置
    ADD R0, R0, #1      ; 每次循环加1
    ADD R7, R0, #0
    ADD R7, R7, #-15
    ADD R7, R7, #-11    ; 判断是否完遍历26字母
    BRz OUTPUT_YES      ; 遍历完没有发现输出YES
    BRnzp CHK
    
BIG_TO_SMALL1
    LDR R3, R1, #0      ; 恢复R3    
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    ADD R3, R3, #-5     ; 转成26字母表中对应的次序
    LD R4, ARY      
    ADD R4, R3, R4  
    LDR R5, R4, #0      
    ADD R5, R5, #1  
    STR R5, R4, #0  
    BRnzp LOOP1         ; 返回第一个循环
    
BIG_TO_SMALL2           ; 思路相同
    LDR R3, R2, #0  
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    ADD R3, R3, #-15
    ADD R3, R3, #-5
    LD R4, ARY
    ADD R4, R3, R4      
    LDR R5, R4, #0      
    ADD R5, R5, #-1 
    STR R5, R4, #0      
    BRnzp LOOP2         ; 返回第二个循环
    
OUTPUT_YES:             ; 输出YES
    LD R0, Y
    TRAP x21
    LD R0, E
    TRAP x21
    LD R0, S
    TRAP x21
    BRnzp HALTt         ; 停止程序

OUTPUT_NO:              ; 输出NO
    LD R0, N            
    TRAP x21
    LD R0, O            
    TRAP x21
    BRnzp HALTt         ; 停止程序
    
; 一些辅助参数
HALTt:
    TRAP x25
str1 .FILL x4000
str2 .FILL x4001
ARY  .FILL x3101
SIX  .FILL #26
Y .STRINGZ "Y"
E .STRINGZ "E"
S .STRINGZ "S"
N .STRINGZ "N"
O .STRINGZ "O"

.END

.ORIG x3101
    .BLKW #26           ; 开一个计次数组，长度为26，BLKW默认将数据清零
.END