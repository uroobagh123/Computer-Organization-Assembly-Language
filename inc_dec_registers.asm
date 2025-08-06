;This program demonstrates how to increment and decrement values stored in CPU registers. 

[org 0x0100]
mov ax, 2
inc ax
mov bx, ax
dec bx
mov ax, 0xc400
int 0x21