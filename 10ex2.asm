; 解决除法溢出的问题
; 子程序描述
; 名称: divdw
; 功能: 进行不会产生溢出的除法运算, 被除数为dword型, 除数为word型, 结果为dword型.
; 参数: (ax)=dword型数据的低16位
; 	(dx)=dword型数据的高16位
;	(cx)=除数
; 返回: (dx)=结果的高16位, (ax)=结果的低16位
;	(cx)=余数
; 提示: 
;    公式: X/N=int(H/N)*65536+[rem(H/N)*65536+L]/N
;	X: 被除数, 范围: [0, FFFFFFFF]
;	N: 除数, 范围: [0, FFFF]
;	H: X高16位, 范围: [0, FFFF]
;	L: X低16位, 范围: [0, FFFF]
;	int(): 描述性运算符, 取商, 比如, int(38/10)=3
;	rem(): 描述性运算符, 取余, 比如, rem(38/10)=8

assume cs:code
code segment
start:	mov ax,4240h	
	mov dx,0fh	
	mov cx,0ah	
	call divdw
	mov ax,4c00h
	int 21h

 
 divdw:	mov bx,ax	; 保存4240h    	
 	mov ax,dx	; 000fh 
	mov dx,0     	; 0000h
    	div cx		; 0000,000fh/000ah	第一步除法
	push ax		; int(0000,000fh/000ah)=0001h 商入栈, (dx)=rem(0000,000fh/000ah)=0005h
	mov ax,bx 	
	div cx		; 0005,4240h/000ah
	mov cx,dx	; 为了满足题目要求, 将最终余数保存到cx中
	pop dx		; 出栈恢复最终结果的高16位到dx中, 而低16位已在ax中
 	ret
code ends
end start
