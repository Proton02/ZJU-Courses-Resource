## HOMOwork #4st

#### 5.2

MAR 64bits, we dont have enough information of MDR

#### 5.4

**a** : 8bits

**b** : 6

**c** : 6

#### 5.9

a : add R1 R1 #0, it is different with NOP

b : BRnzp #1, branches to the next address of PC, it is different with NOP

c : Branch has never been taken, it is same with NOP.

#### 5.15

1110 001 000100000 (LEA R1, 0x20)

0010 001 000100000 (LD R2, 0x20)

1010 001 000100001 (LDI R3, 0x20 )

0110 100 010 000001 (LDR R4, R2, 0x1)

1111 0000 0010 0101 (TRAp 0X25)

#### 5.16

a : PC relative mode

b : indirect mode

c : basc mode, offset mode