## Homework #6

#### 7.30

a : BRz END

b : STR R0, R6, #0

c : LDR R0, R6, #0

d : ADD R6, R6, #1

#### 8.2

- We can actually know the number of values in the stack.
- Since we cannot directly get whether the data at the bottom of the stack overflows through the pointer, we need an additional judgment mechanism to prevent the stack from overflowing. In A, we always know the number of data in the stack, and we only need to judge whether the number of data is greater than the capacity to prevent the stack from overflowing.
- In figure 8.8, every time we push or pop the stack, we need to move every data in the stack, the process is more complicated.

#### 8.8

**a** : A, F

**b** : At point "PUSH D" and "PUSH E". 

**c** : A, F, M





