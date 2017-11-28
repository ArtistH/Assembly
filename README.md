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
