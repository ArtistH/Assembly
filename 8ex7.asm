assume cs:codesg
data segment
    db '1975','1976','1977','1978','1979','1980','1981','1982','1983'
    db '1984','1985','1986','1987','1988','1989','1990','1991','1992'
    db '1993','1994','1995'
    ; 以上是表示21年的21个字符串

    dd 16,22,382,1356,2390,8000,16000,24486,50065,97479,140417,197514
    dd 345980,590827,803530,1183000,1843000,2759000,375000,4649000,5937000
    ; 以上是表示21年公司总收入的21个dword型数据

    dw 3,7,9,13,28,38,130,220,476,778,1001,1442,2258,2793,4037,5635,8226
    dw 11452,14430,15257,17800
    ; 以上是表示21年公司雇员人数的21个word型数据
data ends

table segment
    db 21 dup ('year summ ne ?? ')
table ends


codesg segment
start:	mov ax,data
	mov ds,ax
	mov ax,table
	mov es,ax

	mov bx,0
	mov si,0
	mov di,0
	mov bp,0
	mov cx,21
    s:
	; 第一字段, 年份
    	mov ax,[bx]
    	mov es:[si],ax
	mov ax,[bx].2
	mov es:[si].2,ax

	; 第二字段, 收入
	mov ax,[bx].84		; 被除数低16位
	mov es:[si].5,ax
	mov dx,[bx].86		; 被除数高16位
	mov es:[si].7,dx
	
	; div, 将商写回人均收入位置
	div word ptr [di].168
	mov es:[si].13,ax

	; 第三字段, 雇员数
	mov ax,[di].168
	mov es:[si].10,ax

	add bx,4	; 前两个字段每次循环后移4个字节
	add di,2	; 第三个字段每次循环后移2个字节
	add si,16	; 每次循环写入一行(16个字节)
	loop s

	mov ax,4c00h
	int 21h

codesg ends

end start
