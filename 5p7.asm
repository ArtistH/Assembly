# 随意向一段内存空间写入内容是很危险的
assume cs:code
code segment
    mov ax,0
    mov ds,ax
    mov ds:[26h],ax
    mov ax,4c00h
    int 21h
code ends
end
