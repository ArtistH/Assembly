; 用div计算datasg段中第一个数据除以第二个数据后的结果, 商存在第三个数据的存储单元中.

assume cs:codesg,ds:datasg
datasg segment
    dd 100001
    dw 100
    dw 0
datasg ends

codesg segment
start:	mov ax,datasg
	mov ds,ax
	mov ax,ds:[0]
	mov dx,ds:[2]
	div word ptr ds:[4]
	mov ds:[6],ax

	mov ax,4c00h
	int 21h
codesg ends
end start
