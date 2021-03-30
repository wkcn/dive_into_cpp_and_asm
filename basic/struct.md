# struct

结构体决定了结构体内成员的偏移量

默认将结构体成员的偏移对齐到4字节

先出现的变量地址越低


### 变量地址
name | addr | struct offset
-|-|-
s1.a | rbp - 24 | 0
s1.b | rbp - 20 | 4
s1.c | rbp - 16 | 8
s2.a | rbp - 12 | 0
s2.b | rbp - 8 | 4
s2.c | rbp - 4 | 8
