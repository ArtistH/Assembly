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

