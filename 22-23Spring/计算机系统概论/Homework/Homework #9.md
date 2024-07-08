## Homework #9

###the first time what I submit is wrong, pls check this one!!

#### Q1

- push 51, 49 and - into the stack

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |       |
| x3FFD |       |       |       |   -   |       |
| x3FFE |       |       |  49   |  49   |       |
| x3FFF |       |  51   |  51   |  51   |       |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- pop 49 and - off the stack and push minus 49

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |       |
| x3FFD |       |       |       |       |       |
| x3FFE |       |       |  -49  |       |       |
| x3FFF |       |       |  51   |       |       |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- push +

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |       |
| x3FFD |       |       |   +   |       |       |
| x3FFE |       |       |  -49  |       |       |
| x3FFF |       |  51   |  51   |       |       |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- pop 51, -49 and + off the stack and push 51 - 49 = 2

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |       |
| x3FFD |       |       |       |       |       |
| x3FFE |       |       |       |       |       |
| x3FFF |       |   2   |       |       |       |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- push 172 205 +

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |   +   |
| x3FFD |       |       |       |  205  |  205  |
| x3FFE |       |       |  172  |  172  |  172  |
| x3FFF |       |   2   |   2   |   2   |   2   |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- pop 172, 205 and + off the stack and push 172 + 205 = 377 into the stack

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |       |
| x3FFD |       |       |       |       |       |
| x3FFE |       |       |  377  |       |       |
| x3FFF |       |       |   2   |       |       |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- push * into the stack

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |       |
| x3FFD |       |       |       |   *   |       |
| x3FFE |       |       |       |  377  |       |
| x3FFF |       |       |       |   2   |       |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- pop 2, 377 and * off the stack and push 2 * 377 = 754 into the stack

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |       |
| x3FFD |       |       |       |       |       |
| x3FFE |       |       |       |       |       |
| x3FFF |       |  754  |       |       |       |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- push 17, 2 and * into the stack

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |   *   |
| x3FFD |       |       |       |   2   |   2   |
| x3FFE |       |       |  17   |  17   |  17   |
| x3FFF |       |  754  |  754  |  754  |  754  |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- pop 17, 2 and * off the stack and push 17 * 2 = 34 into the stack

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |       |
| x3FFD |       |       |       |       |       |
| x3FFE |       |       |  34   |       |       |
| x3FFF |       |       |  754  |       |       |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- push - into the stack

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |       |
| x3FFD |       |       |       |   -   |       |
| x3FFE |       |       |       |  34   |       |
| x3FFF |       |       |       |  754  |       |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- pop - and 34 off the stack and push -34 into the stack

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |       |
| x3FFD |       |       |       |       |       |
| x3FFE |       |       |  -34  |       |       |
| x3FFF |       |       |  754  |       |       |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- push + into the stack

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |       |
| x3FFD |       |       |       |   +   |       |
| x3FFE |       |       |       |  -34  |       |
| x3FFF |       |       |       |  754  |       |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

- pop 754, -34 and + off the stack and push 754 - 34 = 720 into the stack

| x3FFB |       |       |       |       |       |
| :---: | :---: | :---: | :---: | :---: | :---: |
| x3FFC |       |       |       |       |       |
| x3FFD |       |       |       |       |       |
| x3FFE |       |       |       |       |       |
| x3FFF |       |  720  |       |       |       |
|  SP   | x4000 | x3FFF | x3FFE | x3FFD | x3FFC |

#### Q2

$$
Address(A[i, j, k, l]) = Base~Address + ((i * N * P * Q) + (j * P * Q) + (k * Q) + l) * 2
$$

Base_Address = x4000 (as given in the question)
$$
\begin{array}{l}
Address(A[2, 3, 4, 5]) \\= x4000 + ((2 * 4 * 5 * 6) + (3 * 5 * 6) + (4 * 6) + 5) * 2 \\= x4000 + (240 + 90 + 24 + 5) * 2 \\= x4000 + 719 * 2 \\= x4000 + 1438 \\= x459E
\end{array}
$$
