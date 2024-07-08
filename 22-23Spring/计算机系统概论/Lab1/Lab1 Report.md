## Lab 1 : Lucky 111

### 1 Algorithm

- Pseudocode

```pseudocode
LD R0, xFF
R1 = 1

while (1)
	AND R2, R1, R0
	if (R2 = 0)
		goto ZERO
	else
		R3 = R3 + 1
	if (R3 = 3)
		goto EQUAL_THREE
	else
		R1 = R1 * 2
		
ZERO
	R3 = 0
	R1 = R1 * 2
	R6 = R6 + 1
	if (R6 - 16 = 0)
		goto END
		
EQUAL_THREE
	R2 = 1
	HALT
	
END 
	R2 = 0
	HALT
```

- R0 is used to store strings

- R1 is a string whose one bit is 1 and the other bits are all zero, which is used for bitwise AND with R0
- R2 is the result of bitwise AND of R0 and R1, and judges the character corresponding to R0 according to whether the result is 0
- R3 records the number of occurrences of 1, if 0 occurs, R3 is cleared
- R4, R5 and R6 are auxiliary registers

### 2 Essential Parts

- ```pseudocode
  if (R2 = 0)
  	goto ZERO
  ```

  This piece of code is used to judge whether the result of the bitwise AND is 0, if it is 0, the counter R3 that records the number of 1s will be cleared, and the number of cycles will be increased by one.

- ```pseudocode
  if (R3 = 3)
  		goto EQUAL_THREE
  ```

  This code is used to judge whether the counter R3 of the number of records 1 is 3, if it is 3, jump directly to EQUAL_THREE, set R2=1 and end the program.

- ```pseudocode
  R1 = R1 * 2
  ```

  This piece of code is a key step, because multiplying a number by 2 in binary means shifting one bit to the left, so this piece of code enables the program to judge the value of the next bit of the number string.

### 3 Questions

Q : How to modify the code if we need to find 5 consecutive 1s?

A : Just change the constant 3 to 5.