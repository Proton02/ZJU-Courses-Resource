.ORIG x3000

    LD  R0, xff
    AND R1, R1, #0            ; 将R1清零
    AND R2, R2, #0            ; 将R2清零
    AND R3, R3, #0            ; 将R3清零
    ADD R1, R1, #1            ; 将R1加一
    AND R6, R6, #0            ; 将R6清零

LOOP:
    AND R2, R1, R0            ; 将R1和R0进行按位与，结果存储在R2中
    
    BRz ZERO                  ; 如果R2为0，则跳转到ZERO标签
    
    ADD R3, R3, #1            ; 如果R2不为0，将R3加1
    ; 判断R3是否等于3
    LD  R4, X                 ; 将常数3加载到R4寄存器中
    NOT R5, R3                ; 对R3进行按位取反操作，结果存储在R5中
    ADD R5, R5, #1            ; 对R5加1，相当于对R3取反后加1
    ADD R4, R4, R5            ; 将R4与R5相加，结果存储在R4中
    BRz EQUAL_THREE           ; 如果R3等于3，则跳转到EQUAL_THREE标签
    
    AND R6, R6, #1            ; R6每次循环加1
    LD  R4, Y                 ; 将常数16加载到R4寄存器中
    NOT R5, R6                ; 对R6进行按位取反操作，结果存储在R5中
    ADD R5, R5, #1            ; 对R5加1，相当于对R6取反后加1
    ADD R4, R4, R5            ; 将R4与R5相加，结果存储在R4中
    BRz E                     ; 如果R6=16则结束
    
    ADD R1, R1, R1            ; 将R1加上自身，相当于左移一位
    BRnzp LOOP

ZERO:
    AND R3, R3, #0            ; 如果R2为0，将R3置为0
    ADD R1, R1, R1            ; 将R1加上自身，相当于左移一位
    
    ADD R6, R6, #1            ; R6每次循环加1
    LD  R4, Y                 ; 将常数16加载到R4寄存器中
    NOT R5, R6                ; 对R6进行按位取反操作，结果存储在R5中
    ADD R5, R5, #1            ; 对R5加1，相当于对R6取反后加1
    ADD R4, R4, R5            ; 将R4与R5相加，结果存储在R4中
    BRz E                     ; 如果R6=16则结束
    
    BRnzp LOOP                ; 继续循环

EQUAL_THREE:
    AND R2, R2, #0
    ADD R2, R2, #1            ; 将R7置为1，表示R3等于3
    BRnzp E                   ; 结束程序
    
X: 
    .FILL 3                   ; 定义常数3 0000 0000 0000 0011
Y:
    .FILL 16                  ; 定义常数16

E:
    halt

.END
