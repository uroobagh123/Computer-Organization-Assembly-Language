; This program stores several 16-bit values (words) into registers and is used to examine how the bytes are stored in memory.

[org 0x0100]
mov ax, 1234
mov bx, 0xABFC
mov cx, 0xB100
mov dx, 0xB800
mov ax, 0x4c00
int 0x21