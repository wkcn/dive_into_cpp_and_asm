# Function

## Basic Function

调用函数时，函数参数先存储到寄存器edi, esi中

但在执行的时候，参数又从寄存器转移到内存以及寄存器eax中

函数的返回结果保存在eax中

### 调用过程

rsp会把旧值放到rbp中，rbp+offset来表示局部变量

然后rsp减去16 (16是所有局部变量占用的字节数)

### 调用max_inline时

汇编中函数名：`_Z10max_inlineii`

虽然对函数声明了inline, 但实际上没有內联
b -> edx -> esi
a -> eax -> edi

- 进入函数`_Z10max_inlineii`时，
    1. 将rbp放进栈中
    2. 将rsp的值复制给rbp
    3. 此时main函数中的局部变量是处于rsp, rbp的上方
    4. rbp - 4指变量a, rbp - 8指变量b
    5. jle 小于等于跳转到L2, 否则跳转到L4 
    6. 结果存eax中
    7. popq rbp并且ret

调用整个过程的前后rbp, rsp不变, eax改变

### 调用min函数时

b -> edx -> esi
a -> eax -> edi

`call _Z3minii`
和调用`max_inline`类似


### 变量地址

name | addr
--|--
a | rbp - 16
b | rbp - 12
ma | rbp - 8
mi | rbp - 4
