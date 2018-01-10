; 显示字符串
; 子程序描述
; 名称: show_str
; 功能: 在指定的位置, 用指定的颜色, 显示一个用0结束的字符串.
; 参数: (dh)=行号(取值范围0~24), (dl)=列号(取值范围0~79)
;	(cl)=颜色, ds:si指向字符串的首地址
; 返回: 无
; 应用举例: 在屏幕的8行3列, 用绿色显示data段中的字符串.

assume cs:code
data segment
    db 'Welcome to masm!',0
data ends

code segment
start:	mov dh,8
	mov dl,3
	mov cl,2
	mov ax,data
	mov ds,ax
	call show_str
	mov ax,4c00h
	int 21h

 show_str:
	mov ax,0b800h
	mov es,ax
	mov bp,0
	mov al,160	; 1行80个字符, 占160个字节.
	mul dh
	add bp,ax	; 将乘法结果(行起始地址)写入bp	
	mov al,2
	mul dl
	add bp,ax	; 将乘法结果(列起始地址)累加到bp
	mov ah,cl	; 颜色信息写入ah

	mov si,0
    s:	mov cl,[si]
	mov ch,0
	jcxz ok
	mov al,[si]	; 字符写入al
    	mov es:[bp],ax
	inc si
	add bp,2
	jmp short s
  ok: 
  	ret
code ends
end start
