##Lab4 : Flappy Bird

###1 Algorithm

```c
keyboard interrupt routine;
	SAVE R1, R3, R4, R7
	
	LD R1, KBDR         		; Save keyboard input data in R0
    LDR R0, R1, #0
    
    if (R0 - 58 > 0)			; Transform bird form
    	while(R5 == 46)			; Find the bird's head
    		LDR R5, R7, #0
    		R7 = R7 + 1
    	for(i = 0; i < 3; i++)	; Replace characters with the typed characters
            R0 = #46
            STR R0, R7, #0
            R7 = R7 + 1
    else						; move bird position
    	for(i = 0; R5 == 46; i++)
    		LDR R5, R7, #0
    		R7 = R7 + 1
    	R1 = #46
    	for(j = 0; j < 3; j++)	; replace characters with the typed characters
    		STR R1, R7, #0
    	R7 = R7 + i
    	for(k = 0; k < 3; k++)	; replace characters with the typed characters
    		STR R5, R7, #0
	Recover R1, R3, R4, R7

loop output program;
	R7 = x4011
    R1 = #97
    R2 = #46
    for(i = 0; i < 3; i++)		; Bird's initial position
        STR R1, R7, #0
        R7 = R7 + 1
    R7 = x4000
    for(j = 0; j < 18; j++)		; Air's initial position
        STR R2, R7, #0
        R7 = R7 + 1  
    while (1)
        for(i = 0; R5 == 46; i++)	; find the head of bird
            LDR R5, R7, #0
            R7 = R7 + 1
        for(i = 0; i<3; i++)		; Move the bird forward one bit every time
            STR R0, R7, #0
            R7 = R7 - 1
        DELAY function (1500)		; sleep
        trap x22					; output
```

This program is divided into two parts : 

- **keyboard interrupt routine**

  First save the register storage data of the main program. Use KBDR to read the data entered by the keyboard to determine whether it is a letter or a number. If it is a character, replace the array; if it is a number, move the array forward or backward. Finally restore the data of the main program register

- **Main program**

  The main program first enters the initial state of the bird and the air into the array. In the wireless loop, first determine the position of the bird head, if it is not at the beginning of the array, move forward one bit, otherwise keep it as it is, and output

###2 Essential Parts

- **Save the data of main program**

  ```assembly
  LD R2, SAVE        
  STR R1, R2, #1 
  STR R3, R2, #2 
  STR R4, R2, #3  
  STR R7, R2, #5
  ...
  LD R2, SAVE
  LDR R1, R2, #1
  LDR R3, R2, #2
  LDR R4, R2, #3
  LDR R7, R2, #5
  ```

- **Shift function**

  ```assembly
  LD R1, A#46         ; Change the original position to air
  STR R1, R7, #0
  ADD R7, R7, #1
   
  STR R5, R7, #0		; Write the bird to the target position
  ADD R7, R7, #1
  ```

- **Push function**

  ```assembly
  LD R1, B#46        
  ADD R7, R7, #1     
  STR R1, R7, #0
  ADD R7, R7, #-1
  STR R5, R7, #0
  ```

### 3 Questions

- Q : Where is the priority of commands stored?

  A : The priority of the command is stored in the processor status register.

- Q : In the PSR, which bits have specific meanings? In which bits is the priority of the command stored?

  A : In the PSR, the 15th bit indicates administrator rights and non-administrator rights, the 8th to 10th bits store the priority, and the 0th to 2nd bits store CC.

- Q : How to get the priority value in PSR while debugging the program?

  A : If you want to get the priority value in the PSR, you should enter the interrupt program of the system memory, and then observe the third bit of the PSR.

- Q : What happens to your program if you enter illegal characters? For example, the ASCII code is 47?

  If an illegal character is input, the program may not jump in some BR instructions and cause an error. For example, the ASCII code of the input character is 47, which corresponds to -1 in the program, and this character will be written to x3FFF, resulting in output The length of the bird in the string is 2
