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

## 6ex5-\*.asm	p133
实验五的所有程序, 需要结合"EXE文件中程序的加载过程"知识点深入理解.


## 7p4.asm	p142
大小写字母互相转换的方法

## 7p6.asm	p145
使用[bx+idata]方式进行数组处理, 同样是处理大小写转换问题.

## 7q9.asm	p158
将datasg段中每个单词的前4个字母改为大写字母.

## 8q1.asm	p171
用div计算datasg段中第一个数据除以第二个数据后的结果, 商存在第三个数据的存储单元中.

## 8ex7.asm	p173
实验7 寻址方式在结构化数据访问中的应用


## 9q1.asm	p176
在DEBUG中通过-d查看内存内容来验证内容复制

## 9p2.asm	p178
在DEBUG中验证段内转移, jmp short 标号

## 9p3.asm	p181
在DEBUG中验证段间转移, jmp far ptr 标号

## 9ex8.asm	p187
分析程序执行过程

## 9ex9.asm	p187
在屏幕中间显示不同颜色的字符串'welcome to masm!'

## 10p1.asm	p201
计算data段中第一组数据的3次方, 结果保存在后面一组dword单元中.

## 10p2.asm	p202
将一个全是字母的字符串转换为大写

## 10ex1.asm 	p206
实验10.1 显示字符串
