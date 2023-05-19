include 'emu8086.inc'
mov si,0  
print 'enter n:'
call scan_num
printn
mov n,cx
mov bx,cx 
mov di,2
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
  je l2
  mov ax,a[si]   
  mov dx,0
  div di
  cmp dx,0
  je l3 
  inc o
  add si,2
  dec n
  jmp l1
l3:
 inc e
 add si,2
 dec n
 jmp l1  
   
l2:
  print 'evens='
  mov ax,e
  call print_num
  printn
  print 'odds='
  mov ax,o
  call print_num
  hlt
define_print_num
define_print_num_uns   
define_scan_num
e dw 0
o dw 0
n dw 0
a dw n dup(?)
     
    