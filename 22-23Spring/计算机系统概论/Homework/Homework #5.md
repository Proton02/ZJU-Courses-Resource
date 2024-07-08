## Homework #5st

For 5.37 and 5.39, the initial steps are the same, PC command is transmitted from bus to MAR, then MEM to MDR, and then BUS to IR

#### 5.37

When the instruction is transmitted to IR, the SEXT unit is connected to IR[8:0]. After ADDR2MUX, x1CC is sign-extended to xFFCC and the PC instruction (0100 1010 0001 1100) passed through ADDR1MUX is transmitted to ADD together, after integration of MAXMUX and GateMARMUX From the bus to the MAR, the data in the MAR enters the MDR through the MEM, and the MDR data is then transmitted to the MAR by the bus, and then the output data of SR1 is calculated by the ALU and then enters the bus through the GateALU to be transmitted to the MDR, and the two data enter the MEM together.

#### 5.39

When the instruction is transmitted to IR, the SEXT unit is connected to IR[8:0]. After ADDR2MUX, x1FD is signed and extended to 1111 1111 1111 1101, and the PC instruction (0100 0000 0001 1001) passed through ADDR1MUX is transmitted to ADD together, and the LEA instruction is implemented in MAXMUX and GateMARMUX.

#### 6.24

0110 0110 0110

#### 7.32

| x8006 | 0    | 0    | 1    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 1    | 0    |
| ----- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| x8007 | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    |
| x8008 | 0    | 0    | 1    | 1    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 0    | 1    | 0    | 1    | 1    |

#### 7.34

ADD R0, R0, #1

NOT R2, R0

ADD R2, R2, #1

BRz DONE