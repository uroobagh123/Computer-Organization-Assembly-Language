; This program calculates the square of 6 (6 × 6 = 36) by repeatedly adding the number 6 to the AX register using only the ADD instruction.

[org 0x0100]
mov ax, 6
add ax, ax
add ax, 6
add ax, 6
add ax, 6
add ax, 6
mov ax, 0x4c00
int 0x21