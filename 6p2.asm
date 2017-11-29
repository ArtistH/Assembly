# 计算 0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h 8个数据的和.
# 较6p1.asm添加start和end start.

assume cs:code

code segment
    dw 0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h

start
    mov bx,0
    mov ax,0

    mov cx,8
  s:add ax,cs:[bx]
    add bx,2
    loop s

    mov ax,4c00h
    int 21h
code ends

end start
