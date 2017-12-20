assume cs:code,ds:data
data segment
    db 'welcome to masm!'
data ends

code segment
start:	mov ax,data
	mov ds,ax
	mov ax,0b800h
	mov es,ax

	mov bx,0
	mov si,0
	mov cx,16
    s:  mov al,[bx]		
    	mov ah,2h		; 绿色
    	mov es:[720h+si],ax	; 写入第12行64列

	mov ah,24h		; 绿底红色
    	mov es:[7c0h+si],ax	; 写入第13行64列

	mov ah,71h		; 白底蓝色
	mov es:[860h+si],ax	; 写入第14行64列

	inc bx
	add si,2
	loop s

	mov ax,4c00h
	int 21h
code ends
end start
