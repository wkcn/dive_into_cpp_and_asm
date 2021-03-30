# Switch-case

- case数量少时：
switch case的汇编形式为cmpl, jmp对

- case数量多时：
生成jump table

首先判断是否越界(default情况)
```
	cmpl	$8, -8(%rbp)
	ja	.L2
```

### 变量地址

name | addr
--|--
a | rbp - 8
b | rbp - 4

# Reference
https://blog.csdn.net/pangshaohua/article/details/6982528
