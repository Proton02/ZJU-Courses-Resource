## Homework #8

#### 9.16

**a** : Trap vectors are 8 bits, and 256 trap routines can be executed in the LC-3.

**b** : The RTI instruction is used to return from a TRAP routine because it can save processor state and handle nested TRAPs, and provides multiple return points. The simple BR instruction does not have these functions and cannot return to the TRAP routine correctly.

**c** : 1

#### 9.17

**a** : For computers, certain external mechanisms are the only way to start the clock after it has been stopped, such as the power button. After bit 15 of the register is cleared, the stop service routine cannot return because the clock has stopped causing instruction processing to stop.

**b** : STI R0, MCR This instruction clears the most significant bit and stops the clock. 

**c** : LD R1  SaveR1

**d** : The RTI instruction in the HALT routine will return to the point where the previous TRAP interrupt occurred.

