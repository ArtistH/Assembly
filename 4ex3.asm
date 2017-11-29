; 使用DEBUG程序跟踪寄存器用, 注意查看PSP内容.
assume cs:codesg

codesg segment

        mov ax,2000h
        mov ss,ax
        mov sp,0
        add sp,10
        pop ax
        pop bx
        push ax
        push bx
        pop ax
        pop bx

        mov ax,4c00h
        int 21h

codesg ends

end
