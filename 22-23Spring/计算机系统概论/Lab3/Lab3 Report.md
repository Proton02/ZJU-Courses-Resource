## Lab 3: Deque

### 1 Algorithm

```c
;loop input function
while (1)
    TRAP x20
	if (R0 - 10 == 0)
        goto ARY_LOOP			;traversal function
    else
        STR R0, R1, #0      
   		ADD R1, R1, #1
        
;traversal function
while(the character to be read is not zero)
    ADD R1, R1, #1				;Use R1 to read the stored characters
    
    if(R1 = 45)					;"-"
        if(R4 - R3 = 1)
            OUT PUT "_"
        else 
            STR R3, R7, #0
            R3 = R3 + 1
            R7 = R7 + 1
            
    if(R1 = 93)					;"]" Same as when "-", but use R4
        
    if(R1 = 43)
        R1 = R1 + 1      		;R1 shifts 1 bit, and reads the data to be stored
    	LDR R5, R1, #0      	;Write the value at R1 to R5
    	STR R5, R3, #0      	;Write the data in R5 to the point of R3
        R3 = R3 - 1
            
    if(R1 = 91)					;"[" Same as when "+", but use R4

Final output function
while(R1 != 0)
	LDR R0, R7, #0
	TRAP x21
	R7 = R7 + 1
```

In the program, a total of three arrays are set, the first array reads the input raw data, the second performs actual stack and queue operations, and the third stores the characters to be output. The first one is controlled by R1; the second one is controlled by R3 and R4, R3 is left and R4 is right; the third one is controlled by R7, and each output value is transferred to the third array through R7.

During the traversal process, first read the data from the first array, make four judgments, recognize the four characters "+" "-" "[" "]", perform corresponding operations respectively, and store the results in the third array, and finally output.

###2 Essential Parts

- **Determine whether there are output characters when the deque is empty.**

  ```assembly
  NOT R0, R3          ; Determine whether the difference between R3 and R4 is 1
  ADD R0, R0, #1
  ADD R0, R4, R0
  ADD R0, R0, #-1
  BRz SAVE            ; If it is empty, store _ in ARY3
  ```

- **Perform a pop operation on the stack**

  ```assembly
  LDR R6, R3, #0      ; Read data from R3 into R6
  ADD R6, R6, #0
  STR R6, R7, #0      ; it is stored in ARY3
  ADD R7, R7, #1      ; R7 points to the next bit
  AND R0, R0, #0      ; Clear what R3 points to
  STR R0, R3, #0
  ADD R3, R3, #1      ; R3 shift right one bit
  ```

- **Perform a push operation on the stack**

  ```assembly
  ADD R1, R1, #1      ; R1 moves back one bit
  LDR R5, R1, #0      ; Write the value at R1 to R5
  STR R5, R3, #0      ; Write the data in R5 to the point of R3
  ADD R3, R3, #-1     ; R3 shift left one
  ```

###3 Questions

Q : What is the maximum capacity of your deque ?

A : Its large capacity is the limit of the first array and the third array to the second array. When the tail and head of the first and third arrays are connected with the second array, the full capacity is reached.

Q : Does your stack have any protection against overflow or underflow?

A : In this experiment, since I know the size limit of the input data, it is enough to open an array that meets the requirements, and there is no relevant limit set. If we want to set it, we need to perform a loop operation.