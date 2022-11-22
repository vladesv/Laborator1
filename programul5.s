.data
x: .long 5
egal: .asciz "0\n"
pozitiv: .asciz "pozitiv\n"
negativ: .asciz "negativ\n"
.text
.globl main
main:
movl $0,%ebx
movl x, %eax
cmp %ebx,%eax
je etexit2
jg etexit1
jl etexit3
etexit1:
mov $4, %eax
mov $1, %ebx
mov $pozitiv, %ecx
mov $8, %edx
int $0x80
mov $1, %eax
mov $0, %ebx
int $0x80

 etexit2:
mov $4, %eax
mov $1, %ebx
mov $egal, %ecx
mov $2, %edx
int $0x80
mov $1, %eax
mov $0, %ebx
int $0x80
etexit3:
mov $4, %eax
mov $1, %ebx
mov $negativ, %ecx
mov $8, %edx
int $0x80
mov $1, %eax
mov $0, %ebx
int $0x80
