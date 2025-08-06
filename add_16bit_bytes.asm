; This program adds two 16-bit numbers stored at 'src' and 'dest' using 8-bit instructions.
[org 0x100 ] 
mov al, [ src ]
add byte [ dest ] , al
mov al, [ src + 1 ]
adc byte [ dest + 1 ] , al
mov ax , 0x4c00
int 0x21
dest: dw 4000
src: dw 8000