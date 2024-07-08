## Homework #7

#### 9.2

When synchronous I/O is used, the "ready bit" is not required, because synchronous I/O will perform time synchronization and coordination, and the I/O device will notify the CPU after the operation is completed. The CPU does not need to continuously query the status, which makes more efficient use of computing resources.

#### 9.6

- Program initiates a read operation from the KBDR without checking the ready bit of the KBSR.
- If there is no new data available in the keyboard buffer, the KBDR may return stale data that was previously stored in it.
- The program proceeds to process the data based on the assumption that it is valid, which could lead to unexpected behavior or errors in the program logic.

#### 9.10

- Data loss: If the display hardware writes data directly to DDR without waiting for the display to be ready, the previous data may be overwritten or lost, so that the previous content cannot be displayed correctly.

- Display errors: If the display hardware writes to DDR without the DSR ready bit set, the display may not process the new data correctly. This can cause problems such as display errors, distorted images, or garbled characters.

- Device conflict: If multiple devices try to write to DDR at the same time without proper synchronization and checking, it may cause conflicts between devices, which in turn can lead to system failure or instability.

#### 9.14

The addressing mode bit in the LC-3 Load instruction determines whether to load from KBDR or from memory address xFE02. If the addressing mode bits are 00, load the constant value xFE02; if the addressing mode bits are 01 or 10, load the value stored in memory address xFE02.

#### 9.26

The linkage of JSRA is lost when JSRB is executed



