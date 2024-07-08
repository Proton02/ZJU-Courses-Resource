##Homework #1st

#### 1.2 

**Can a higher-level programming language instruct a computer to compute more than a lower-level programming language?**

No. High-level languages may offer productivity benefits and make development faster, but they ultimately rely on low-level operations provided by the underlying hardware and operating system. High-level languages are weakly associated with the underlying computer, whereas assembly language is closely associated with the computer on which the program is executed.

#### 1.4 

**Name one characteristic of natural languages that prevents them from being used as programming languages.**

Ambiguity

#### 1.10 

**Name three characteristics of algorithms. Briefly explain each of these three characteristics.**

**Definite** : no ambiguity.

**Effective** **computability** : every step can be successfully carried out.

**Finiteness** :  the procedure will terminate.

#### 1.16 

**Name at least three things specified by an ISA.**

- **指令码（opcode）**：用于描述操作的代码。 

- **数据类型（data type）**：操作数（operand）的表示形式。

- **寻址模式（addressing mode）**：计算机用于查找操作数地址的机制。 

- **可寻址性（Address ability）**：每个内存槽位（memory-slot）的字节数。

#### 1.18 

**How many ISAs are normally implemented by a single microarchitecture? Conversely, how many microarchitectures could exist for a single ISA?**

Only one kind.

there can be many different kinds.



#### 2.4

number : $2^{n}$  range : $[0,2^{n}-1]$

#### 2.8

**a. What is the largest positive number one can represent in an eight-bit 2’s complement code? Write your result in binary and decimal.**
**b. What is the greatest magnitude negative number one can represent in an eight-bit 2’s complement code? Write your result in binary and decimal.**
**c. What is the largest positive number one can represent in n-bit 2’s complement code?**
**d. What is the greatest magnitude negative number one can represent in n-bit 2’s complement code?**

**a** : binary : 0111 1111  decimal : 127

**b** : binary : 1000 0000  decimal : -128

**c** : $2^{n-1}-1$

**d** : $-2^{n-1}$

#### 2.17

**a** : 0001(1) + 1011(-5) = 1100(-4) 

**b** : 1111 1111(-1) + 0101 0101(85) = 0101 0100(84)

**c** : 0101(5) + 1110(-2) = 0011(3)

**d** : 01(1) + 10(-2) = 11(-1)

#### 2.20

c and d overflow.

a, b and e are operations of different signs, so they are impossible to overflow.

n=4 range : $[-2^{n-1},2^{n-1}-1]=[-8,7]$

**a** : 1100(-4) + 0011(3) = -1

**b** : 1100(-4) + 0100(4) = 0

**c** : 0111(7) + 0001(1) = 1000(-8) < 0 overflow 

**d** : 1000(-8) - 0001(1) = 1000(-8) + 1111(-1) = 0111(7) > 0 overflow

**e** : 0111(7) + 1001(-7) = 0

#### 2.34

**a** : 0111

**b** : 0111

**c** : 1101

**d** : 0110











