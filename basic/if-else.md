# if-else

```
	movl	$1, -8(%rbp)
	movl	$2, -4(%rbp)
	cmpl	$3, -8(%rbp)
	jne	.L2
	movl	$4, -4(%rbp)
	jmp	.L3
.L2:
	movl	$5, -4(%rbp)
.L3:
	movl	$0, %eax
```

### 变量地址

name | addr
--|--
a | rbp - 8
b | rbp - 4
