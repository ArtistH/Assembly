# Assembly

## 4p1.asm	p77
第一个汇编程序, 没什么实际意义.

## 4ex3.asm	p94
实验三, 用于使用DEBUG程序跟踪寄存器用, 注意查看PSP内容.


## 5p3.asm	p104
计算ffff:0006单元中的数乘以3, 结果存储在dx中.

## 5p3段前缀.asm
5p3.asm修改版, 在程序中不加段前缀的情况下, 
mov ax,[idata] 在DEBUG中可以正常处理, 
而被MASM编译器当作指令mov ax,idata处理, 所以在程序中需要添加段前缀, 
如: mov ax,ds:[idata]

## 5p5.asm	p116
计算ffff:0~ffff:b单元中的数据的和, 结果存储在dx中.
注意需要用一个16位寄存器来做中介的问题.

## 5p7.asm	p118
证明随意向一段内存中写入内容是危险的.

## 5p9.asm	p121
将内存ffff:0-ffff:b单元中的数据复制到0:200-0:20b单元中.


## 6p1.asm	p124
计算 0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h 8个数据的和.

## 6p2.asm	p126
计算 0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h 8个数据的和.
较6p1.asm添加start和end start.

## 6p3.asm	p128
利用栈, 将程序中定义的数据逆序存放.

## 6p4.asm	p130
利用栈, 将程序中定义的数据逆序存放.
较6p3.asm将数据, 栈和代码放到了不同的段中.
