; This program demonstrates how to copy values between registers and how to store constants into 8-bit and 16-bit registers using MOV instructions.

[org 0x0100]
mov cl, 5
mov bl, 7
mov ax, 6
mov dx, 2
mov cl, bl
mov dx, ax
mov al, 0x12
mov ax, 0x1234
mov ax, 0xFFFF
mov ax, 0x4c00
int 0x21