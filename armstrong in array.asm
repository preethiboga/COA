include 'emu8086.inc'
mov si,0  
print 'enter n:'
call scan_num
printn
mov n,cx
mov bx,cx 
mov di,10
create:
  call scan_num
  printn
  mov a[si],cx
  add si,2
  dec n
  cmp n,0
  jg create
  je intalize
intalize:
  mov si,0
  mov n,bx
  print 'array elements:'
printarray:
  mov ax,a[si] 
  call print_num
  print " "
  add si,2
  dec n
  cmp n,0
  jg printarray
  je over
over:  
  printn
  mov n,bx
  mov si,0
l1:  
  cmp n,0
  je h
  mov ax,a[si] 
  mov a,ax  
  mov cx,0
l2:
  cmp ax,0
  je l3
  mov dx,0 
  div di
  inc cx
  jmp l2
l3:  
  mov c,cx
  mov ax,a
  mov s,0 
l4:
  mov cx,c
  cmp ax,0
  je l5
  mov dx,0
  div di
  mov t,ax
  mov r,dx 
  mov ax,1
  pow: 
    mov bx,r
    mul bx
    loop pow
  add s,ax
  mov ax,t
  jmp l4   
h:
  hlt
l5: 
  mov ax,a
  cmp s,ax
  je l6
  dec n
  add si,2
  jmp l1
l6:
  mov ax,a
  call print_num
  print " "  
  dec n
  add si,2
  jmp l1
define_print_num
define_print_num_uns
define_scan_num
n dw 0
a dw n dup(?)
r dw 0
t dw 0
c dw 0   
s dw 0
           
  
  
    