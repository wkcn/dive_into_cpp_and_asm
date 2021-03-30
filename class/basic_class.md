# Basic Class

sizeof(MyClass) = 4 * 3 = 12

调用MyClass(1, 2)时，
2 -> edx
1 -> esi
函数：`_ZN7MyClassC1Eii`
对应函数：`_ZN7MyClassC2Eii`

**rdi确定类实例的地址**
rdi -> rbp - 8 -> rax
之后offset(%rax)确定类成员的地址

初始化传递进来的两参数
esi -> rbp - 12 -> edx
edx -> rbp - 16

rbp + offset 能确定类变量的位置

1. `movl	%edx, (%rax)`
rbp - 8就是cls1.a

2. `movl	%edx, 4(%rax)`
rbp - 8 + 4 = rbp - 4就是cls1.b

类里面的变量都是用offset(%reg)的形式访问

name | offset
-|-
MyClass.a|0
MyClass.b|4
MyClass.c|8

类的构造函数里的nop起到什么作用(代码内存对齐)

`_ZN7MyClass6updateEi`
