.ORIG   x3000

    LD R0, HEAD       ; R0为数组首地址 
    AND R1, R1, #0  ; R1指向x，横坐标
    AND R2, R2, #0  ; R2指向y，纵坐标
    LDI R3, Y
    NOT R3, R3
    ADD R3, R3, #1
    ST R3, yy
    AND R3, R3, #0
    LDI R4, X
    NOT R4, R4
    ADD R4, R4, #1
    ST R4, xx
    AND R4, R4, #0
    AND R5, R5, #0
    LD R6, STK
    LEA R7, OUTT
LOOP_STARTT         ; 开始循环
    LD R1, yy
    ADD R1, R4, R1
    BRn FIND_ROAD
    BRzp FINAL
FIND_ROAD           ; 遍历寻找下一个方向  
    ADD R6, R6, #-1
    STR R7, R6, #0  ; 存到R6处    
UP                  ; 向上
    ADD R4, R4, #0  ; 判断是否在最顶上
    BRnz DOWN
    LDR R1, R0, #0  ; X存到R1
    ADD R4, R4, #-1
    LD R7, xx
    ADD R0,R0,R7
    ADD R7,R0,#0
    LDR R7,R7,#0    ; R0-x存到R7
    NOT R7,R7
    ADD R7,R7,#1
    ADD R7,R1,R7
    BRnz UP_NOW     ; 判断向上的海拔和当前海拔大小

    ADD R3,R3,#1
    JSR FIND_ROAD   ; 返回递归
    ADD R3,R3,#-1
UP_NOW  
    LDI R7,X
    ADD R0,R7,R0
    ADD R4,R4,#1    ; 保存R0 R1    
DOWN                ; 向下
    LD R7,yy
    ADD R7,R7,#1
    ADD R7,R7,R4
    BRzp LEFT       ; 判断是否在最底下
    LDR R1,R0,#0    ; 判断向下是否还在map内
    ADD R4,R4,#1
    LDI R7,X  
    ADD R0,R0,R7
    ADD R7,R0,#0
    LDR R7,R7,#0
    NOT R7,R7
    ADD R7,R7,#1
    ADD R7,R1,R7

    BRnz DOWN_NOW  ; 判断向下的海拔和当前海拔大小
    ADD R3,R3,#1
    JSR FIND_ROAD   ; 返回递归
    ADD R3,R3,#-1
DOWN_NOW  
    LD R7,xx        ; 保存R0 R1
    ADD R0,R7,R0
    ADD R4,R4,#-1
LEFT                ; 向左
    ADD R5,R5,#0
    BRnz RIGHT      ; 判断向左是否在map内
    LDR R1,R0,#0    ; x存到R1
    ADD R5,R5,#-1   
    ADD R0,R0,#-1
    ADD R7,R0,#0    
    LDR R7,R7,#0    ; R0-1存到R7
    NOT R7,R7
    ADD R7,R7,#1
    ADD R7,R1,R7

    BRnz LEFT_NOW   ; 判断向左的海拔和当前海拔大小
    ADD R3,R3,#1
    JSR FIND_ROAD
    ADD R3,R3,#-1
LEFT_NOW  
    ADD R5,R5,#1    ; 保存R0 R2
    ADD R0,R0,#1
RIGHT               ; 向右
    LD R7,xx
    ADD R7,R7,#1
    ADD R7,R7,R5
    BRzp CHK_RIGHT  ; 判断向右是否还在map内
    LDR R1,R0,#0    ; x存到R1
    ADD R5,R5,#1
    ADD R0,R0,#1
    ADD R7,R0,#0
    LDR R7,R7,#0    ; R0+1存到R7
    NOT R7,R7
    ADD R7,R7,#1
    ADD R7,R1,R7

    BRnz RIGHT_NOW  ; 判断向右的海拔和当前海拔大小
    ADD R3,R3,#1
    JSR FIND_ROAD
    ADD R3,R3,#-1
RIGHT_NOW 
    ADD R5,R5,#-1   ; 保存R0 R2
    ADD R0,R0,#-1      
CHK_RIGHT           ; 判断是不是在最右边
    NOT R7,R2
    ADD R7,R7,#1
    ADD R7,R7,R3
    BRnz LONGEST
    AND R2,R2,#0
    ADD R2,R3,#0        
LONGEST             ; 找到最长的一条路
    LDR R7,R6,#0
    ADD R6,R6,#1   
    RET             ; 返回

OUTT    
    ADD R0,R0,#1
    ADD R5,R5,#1
    LD R1,xx
    ADD R1,R1,R5
    BRn LOOP_STARTT
    ADD R4,R4,#1
    LD R1,xx
    ADD R5,R5,R1
    BRnzp LOOP_STARTT   ; 开始下一个循环
FINAL     
    ADD R2,R2,#1
    HALT

Y .FILL x4000
X .FILL x4001
HEAD .FILL x4002
STK .FILL x3500 
yy .BLKW #1
xx .BLKW #1
PL .BLKW #1

.END

.ORIG x4000
.FILL #3 ; Y
.FILL #4 ; X
.FILL #89 ; the map
.FILL #88
.FILL #86
.FILL #83
.FILL #79
.FILL #73
.FILL #90
.FILL #80
.FILL #60
.FILL #69
.FILL #73
.FILL #77
.END