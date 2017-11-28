# 计算ffff:0~ffff:b单元中的数据的和, 结果存储在dx中.

assume cs:code
code segment
    mov ax,0ffffh
    mov ds,ax
    mov bx,0
    mov dx,0
    mov cx,12
s:  mov ah,0 
    mov al,[bx]
    add dx,ax
    inc bx
    loop s
    mov ax,4c00h
    int 21h
code ends
end
