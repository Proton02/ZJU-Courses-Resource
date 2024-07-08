.ORIG x3000

    LD R1, ARY1         ; R1用于指向储存字符的数组指针
    LD R3, ARY2         ; R3,R4用于指向栈中操作，R3为左，R4为右
    LD R4, ARY2
    ADD R4, R4, #1
    LD R7, ARY3
    
RECE_LOOP               ; 将输入的字符存到ARY1中
    TRAP x20
    OUT
    ADD R2, R0, #-10    ; 判断是不是回车键
    BRz END_RECE_LOOP   ; 是回车就结束输入
    STR R0, R1, #0      ; 读取的字符存在R0中，将R0中的字符存到R1所指的位置
    ADD R1, R1, #1      ; 将R1指向下一个地址
    BRnzp RECE_LOOP     ; 继续输入
    
END_RECE_LOOP           ; 结束输入
    LD R1, ARY1         ; R1指向ARY1首地址
    ADD R1, R1, #-1
    BRnzp ARY2_LOOP     ; 开始遍历

ARY2_LOOP
    ADD R1, R1, #1      ; R1后移一位
    
    LDR R0, R1, #0      ; 判断是不是-
    ADD R0, R0, #-15
    ADD R0, R0, #-15
    ADD R0, R0, #-15
    BRz JUDGE_KONG-     ; 如果是-开始判空
    
    ADD R0, R0, #-15    ; 判断是不是]
    ADD R0, R0, #-15
    ADD R0, R0, #-15
    ADD R0, R0, #-3
    BRz JUDGE_KONG]     ; 如果是]开始判空
    
    LDR R0, R1, #0      ; 判断是不是+
    ADD R0, R0, #-15
    ADD R0, R0, #-15
    ADD R0, R0, #-13
    BRz LEFT_IN         ; 如果是+开始从左输入数据
    
    ADD R0, R0, #-15
    ADD R0, R0, #-15
    ADD R0, R0, #-15
    ADD R0, R0, #-3
    BRz RIGHT_IN        ; 如果是[开始从右输入数据

    BRnzp FINAL_OUTPUT  ; 开始输出
    
LEFT_IN
    ADD R1, R1, #1      ; R1后移一位
    LDR R5, R1, #0      ; 将R1处的值写到R5
    STR R5, R3, #0      ; 将R5中的数据写到R3所指
    ADD R3, R3, #-1     ; R3左移一位
    BRnzp ARY2_LOOP     ; 继续循环
    
RIGHT_IN
    ADD R1, R1, #1      ; R1后移一位
    LDR R5, R1, #0      ; 将R1处的值写到R5
    STR R5, R4, #0      ; 将R5中的数据写到R3所指
    ADD R4, R4, #1      ; R4右移一位
    BRnzp ARY2_LOOP     ; 继续循环

JUDGE_KONG-
    NOT R0, R3          ; 判断R3,R4是否相差1，差1说明为空
    ADD R0, R0, #1
    ADD R0, R4, R0
    ADD R0, R0, #-1
    BRz SAVE            ; 若为空，则输出"_"
    LDR R6, R3, #0      ; 不是空的，判断R3所指是不是0，将R3的数据读到R6中
    ADD R6, R6, #0
    BRz R_3++           ; 如果所指为0则R3右移一位
    STR R6, R7, #0      ; 如果不是0就存在ARY3中
    ADD R7, R7, #1      ; R7指向下一位
    AND R0, R0, #0      ; 将R3所指清零
    STR R0, R3, #0
    ADD R3, R3, #1      ; R3右移一位
    BRnzp ARY2_LOOP     ; 继续循环

R_3++
    ADD R3, R3, #1      ; R3右移一位
    LDR R6, R3, #0      ; 将R3的数据读到R6中
    STR R6, R7, #0      ; 存在ARY3中
    ADD R7, R7, #1      ; R7指向下一位，将R3所指清零
    AND R0, R0, #0      ; 将R3所指清零
    STR R0, R3, #0
    BRnzp ARY2_LOOP     ; 继续循环

JUDGE_KONG]
    NOT R0, R3          ; 判断R3,R4是否相差1
    ADD R0, R0, #1
    ADD R0, R4, R0
    ADD R0, R0, #-1
    BRz SAVE            ; 若为空，则将_存在ARY3中
    LDR R6, R4, #0      ; 不是空的，判断R4所指是不是0，将R4的数据读到R6中
    ADD R6, R6, #0
    BRz R_4--           ; 如果所指为0则R4退一位
    STR R6, R7, #0      ; 如果不是0就存在ARY3中
    ADD R7, R7, #1      ; R7指向下一位
    AND R0, R0, #0      ; 将R4所指清零
    STR R0, R4, #0
    ADD R4, R4, #-1     ; R4左移一位
    BRnzp ARY2_LOOP     ; 继续循环

R_4--
    ADD R4, R4, #-1      ; R4左移一位
    LDR R6, R4, #0      ; 将R4的数据读到R6中
    STR R6, R7, #0      ; 存在ARY3中
    ADD R7, R7, #1      ; R7指向下一位
    AND R0, R0, #0      ; 将R4所指清零
    STR R0, R4, #0
    BRnzp ARY2_LOOP     ; 继续循环

SAVE
    LD R6, _
    STR R6, R7, #0      ; 将_存在ARY3中
    ADD R7, R7, #1      ; R7指向下一位
    BRnzp ARY2_LOOP     ; 继续循环
    
FINAL_OUTPUT
    LDR R1, R7, #0
    ADD R1, R1, #0
    BRz ED
    LDR R0, R7, #0
    TRAP x21
    ADD R7, R7, #1
    BRnzp FINAL_OUTPUT

ED 
    HALT
    
ARY1 .FILL x3100
ARY2 .FILL x4000
ARY3 .FILL x5000
_    .FILL #95
-    .FILL #45
]    .FILL #93
+    .FILL #43
[    .FILL #91

.END

.ORIG   x3100
    .BLKW 150
.END

.ORIG   x3F38
    .BLKW 400
.END

.ORIG   x5000
    .BLKW 200
.END