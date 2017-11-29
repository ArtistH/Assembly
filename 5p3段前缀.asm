; 计算ffff:0006单元中的数乘以3, 结果存储在dx中.

assume cs:code
code segment
    mov ax,0ffffh
    mov ds,ax
    mov al,ds:[6]
    mov ah,0
    mov dx,0
    mov cx,3
s:  add dx,ax
    loop s
    mov ax,4c00h
    int 21h
code ends
end
