## Homework #3rd

#### 3.53

|  c0  |  c1  |  c2  |  c3  |  c4  |  c5  |  c6  |  c7  |
| :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
|  0   |  1   |  1   |  1   |  1   |  0   |  0   |  0   |
|  0   |  1   |  1   |  0   |  0   |  1   |  1   |  0   |
|  0   |  1   |  0   |  1   |  0   |  1   |  0   |  1   |

Extend the time of one clock cycle

Enumerate all states of 3-bits binary number

#### 3.61

**a** : 

|  S1  |  S0  |  X   |  Z   | S1'  | S0'  |
| :--: | :--: | :--: | :--: | :--: | :--: |
|  0   |  0   |  0   |  1   |  0   |  0   |
|  0   |  0   |  1   |  1   |  0   |  1   |
|  0   |  1   |  0   |  0   |  1   |  0   |
|  0   |  1   |  1   |  0   |  0   |  0   |
|  1   |  0   |  0   |  0   |  0   |  1   |
|  1   |  0   |  1   |  0   |  1   |  0   |
|  1   |  1   |  0   |  0   |  0   |  0   |
|  1   |  1   |  1   |  0   |  0   |  0   |

**b** : 

<img src="C:\Users\ADMINI~1\AppData\Local\Temp\WeChat Files\06c67c3ae36390507d5eeffda227d26.jpg" alt="06c67c3ae36390507d5eeffda227d26" style="zoom:33%;" />

#### 4.1

Memory : Storage of information

Processing Unit : Processing of information

Input : Means of getting information into computer

Output : Means of getting information out of computer

Control Unit : Make sure all of the other parts perform tasks correctly in right time

#### 4.3

The program counter does not count the number of programs or instructions; rather, it holds the memory address of the next instruction to be fetched and executed. 

The term "instruction pointer" provides a more accurate and insightful description of the role of this register. It points to the current instruction in memory, indicating which instruction will be executed next. The name "instruction pointer" emphasizes the fact that it serves as a reference to the memory location where the next instruction resides.

#### 4.8

8bits  

7bits  

max unused 3bis

####4.10

|      |       Fetch Instruction       | Decode | Evaluate Address | Fetch Data |  Execute  | Store Result |
| :--: | :---------------------------: | :----: | :--------------: | :--------: | :-------: | :----------: |
|  PC  | 0001, 0110, 1100(ADD LDR JMP) |        |                  |            | 1100(JMP) |              |
|  IR  | 0001, 0110, 1100(ADD LDR JMP) |        |                  |            |           |              |
| MAR  | 0001, 0110, 1100(ADD LDR JMP) |        |                  | 0110(LDR)  |           |              |
| MDR  | 0001, 0110, 1100(ADD LDR JMP) |        |                  | 0110(LDR)  |           |              |


