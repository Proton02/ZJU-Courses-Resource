.ORIG x200
    
    LD R1, Ax2000       ; 修改x0180地址处的值，为自己的键盘中断程序的起始地址
    LD R2, Ax0180
    STR R1, R2, #0
    
    LD R1, KBSR         ; 加载KBSR的地址到R1
    LD R3, Ax4000
    LDR R2, R1, #0      ; 从KBSR中加载内容到R2，此时R2存储了KBSR的值
    ADD R2, R2, R3      ; 第14位加1
    STR R2, R1, #0      ; 将R2的值返回到KBSR处
    
    LD R6, OS_SP        ; 原始代码
    LD R0, USER_PSR
    ADD R6, R6, #-1
    STR R0, R6, #0
    LD R0, USER_PC
    ADD R6, R6, #-1
    STR R0, R6, #0
    RTI
    
OS_SP .FILL x3000
USER_PSR .FILL x8002
USER_PC .FILL x3000
Ax2000 .FILL x2000
Ax0180 .FILL x180
KBSR .FILL xFE00
Ax4000 .FILL x4000
.END

.ORIG x2000             ; 键盘中断处理程序

    LD R2, SAVE         ; 保存数据
    STR R1, R2, #1 
    STR R3, R2, #2 
    STR R4, R2, #3 
    STR R5, R2, #4 
    STR R7, R2, #5

    LD R1, KBDR         ; 读取KBDR中的数据
    LDR R0, R1, #0      ; 存在R0中
    
GET_INPUT               ; 出现输入开始判断
    LD R7, A4000        ; R7为数组地址
    LD R2, A#58
    AND R3, R3, #0      ; R3用于计数
    
    NOT R2, R2          ; 判断R0是否为1-9数字
    ADD R2, R2, #1
    ADD R2, R0, R2
    BRp DEFORM          ; 不是数字就变形
    BRn SHIFT           ; 是数字就移位

DEFORM
    LD R4, A#46         ; 变形
    LDR R5, R7, #0      ; 将对应地址处的字符读到R5
    NOT R4, R4          ; 判断是不是空气
    ADD R4, R4, #1
    ADD R4, R5, R4
    BRz DEFORMM         ; 是空气就下一个
    
    STR R0, R7, #0      ; 不是空气就替换成输入的字符
    ADD R7, R7, #1
    ADD R3, R3, #1

    LD R4, A#3          ; 判断是否遍历完
    NOT R4, R4      
    ADD R4, R4, #1
    ADD R4, R3, R4
    BRz BACK            ; 变形三次3次就结束
    
    BRnp DEFORM
    
DEFORMM
    ADD R7, R7, #1
    BRnzp DEFORM
    
SHIFT                   ; 移位
    LD R2, A#48         ; 将输入的值转为1-9
    NOT R2, R2
    ADD R2, R2, #1
    ADD R2, R0, R2      ; R2是位移
    
    AND R3, R3, #0      ; R3用于计数

SHIFT_LOOP
    ADD R3, R3, #1
    LDR R5, R7, #0      ; 将对应地址处的字符读到R5
    
    LD R4, A#46         ; 遍历数组，寻找鸟头
    
    NOT R4, R4          ; 判断是不是空气
    ADD R4, R4, #1  
    ADD R4, R5, R4      ; R5保存原来字母的ASCII码
    BRz SHIFT_LOOPP     ; 是空气就下一个
    
    ADD R4, R3, R2      ; 不是空气，R3为鸟当前位置，R4为新位置
    LD R1, A#18         ; 判断是否超过第18位
    NOT R1, R1
    ADD R1, R1, #1
    ADD R1, R4, R1
    BRzp SHIFT_TO_ED    ; 超过了就改成空气并直接移到末尾
    BRn SHIFT_TO_NEW    ; 没超过就改成空气并移到新位置
    
SHIFT_LOOPP
    ADD R7, R7, #1
    BRnzp SHIFT_LOOP

SHIFT_TO_ED
    LD R1, A#46         ; 改成空气
    STR R1, R7, #0
    ADD R7, R7, #1
    STR R1, R7, #0
    ADD R7, R7, #1
    STR R1, R7, #0
    
    LD, R7, A4000
    ADD R7, R7, #15     ; 到末尾
    ADD R7, R7, #2 
    
    STR R5, R7, #0      ; 将字符写到新位置
    ADD R7, R7, #1
    STR R5, R7, #0     
    ADD R7, R7, #1
    STR R5, R7, #0
    
    BRnzp BACK
    
SHIFT_TO_NEW
    LD R1, A#46         ; 改成空气
    STR R1, R7, #0
    ADD R7, R7, #1
    STR R1, R7, #0
    ADD R7, R7, #1
    STR R1, R7, #0
    
    ADD R7, R7, #-2     ; 回到原来位置
    ADD R7, R7, R2      ; 到目标位置
    
    STR R5, R7, #0      ; 将字符写到新位置
    ADD R7, R7, #1
    STR R5, R7, #0     
    ADD R7, R7, #1
    STR R5, R7, #0     
    
    BRnzp BACK
    
A#58 .FILL #58
A#3 .FILL #3
A#46 .FILL #46
A#48 .FILL #48
A#18 .FILL #18
A#97 .FILL #97
A#17 .FILL #17
A4000 .FILL x4000
A4016 .FILL x4016
A4017 .FILL x4017
CNT .FILL #3500
KBDR .FILL xFE02
SAVE .FILL x205F
.BLKW #5

BACK
    LD R2, SAVE
    LDR R1, R2, #1
    LDR R3, R2, #2
    LDR R4, R2, #3
    LDR R7, R2, #5
    
    AND R2, R2, #0      
    ADD R2, R2, #15
    RTI
    
.END

.ORIG x3000

    AND R6, R6, #0
    ADD R6, R6, #-15
    ADD R6, R2, R6
    BRz LOOP
    LD R2, B#97         ; 鸟初始形态为a

START1
    LD R7, B4000        ; R7为数组地址
    ADD R7, R7, #15
    ADD R7, R7, #2
    
    STR R2, R7, #0
    ADD R7, R7, #1
    STR R2, R7, #0
    ADD R7, R7, #1
    STR R2, R7, #0

    AND R3, R3, #0      ; R3用于计数
    LD R7, B4000
    
START2
    ADD R3, R3, #1
    
    LD R4, B#46         ; 将.写入后面的地址
    STR R4, R7, #0
    ADD R7, R7, #1
    
    LD R6, B#17         ; 判断是否写完
    NOT R6, R6
    ADD R6, R6, #1
    ADD R6, R3, R6
    BRz LOOP            ; 写完开始循环
    BRn START2
        
RECEI
    LD R5, B#97
    BRnzp LOOP2
    
DELAY
    LD R1, BCNT
DELAYY
    ADD R1, R1, #-1
    BRnp DELAYY
    
LOOP
    LD R0, B4000        ; 输出
    TRAP x22
    AND R6, R6, #0
    ADD R6, R6, #-15
    ADD R6, R2, R6
    BRnp RECEI
    
LOOP2
    LD R7, B4000        ; 判断鸟位置
    LD R1, B#46
    LDR R4, R7, #0      ; R7的值读到R2中
            
    NOT R1, R1          ; 判断第一位是不是鸟
    ADD R1, R1, #1
    ADD R1, R4, R1
    BRz PUSH            ; 鸟不在最前面就前移
    BRnp DELAY          ; 鸟在最前面就保持原样

PUSH
    LD R1, B#46         ; 判断是不是空气
    NOT R1, R1
    ADD R1, R1, #1
    LDR R4, R7, #0
    ADD R7, R7, #1      ; R7进一位
    ADD R1, R4, R1
    BRz PUSH            ; 是空气就继续循环
    LD R1, B#46         ; 不是空气就替换
    ADD R7, R7, #1     
    STR R1, R7, #0
    ADD R7, R7, #-1
    STR R5, R7, #0
    ADD R7, R7, #-1
    STR R5, R7, #0
    ADD R7, R7, #-1
    STR R5, R7, #0
    
    BRnzp DELAY
    
B#58 .FILL #58
B#3 .FILL #3
B#46 .FILL #46
B#48 .FILL #48
B#18 .FILL #18
B#97 .FILL #97
B#17 .FILL #17
B#15 .FILL #15
B4000 .FILL x4000
BCNT .FILL #1500
    
HALT
.END

.ORIG x4000
    ARY .BLKW #20
    .FILL #10
    .FILL #0
.END