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
  mov s,0
l2:
  cmp ax,0 
  je l3
  mov dx,0
  div di 
  mov t,ax 
  mov r,dx
  mov ax,s
  mul di
  add ax,r
  mov s,ax
  mov ax,t
  jmp l2
l3:
  mov ax,s
  cmp ax,a
  je l4
  add si,2
  dec n
  jmp l1
l4:
  call print_num
  print " " 
  add si,2
  dec n
  jmp l1 
h:
  hlt
define_print_num
define_print_num_uns
define_scan_num
n dw 0
t dw 0
r dw 0
a dw n dup(?)
s dw 0    
  
      
     