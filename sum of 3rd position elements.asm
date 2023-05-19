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
  mov ax,0
  mov n,bx
  dec n
  dec n
  dec n
  mov si,4 
l1:
  cmp n,0
  jle l2 
  add ax,a[si]
  add si,2
  add si,2
  add si,2
  dec n
  dec n
  dec n
  jmp l1
l2:
  call print_num
  hlt
define_print_num
define_print_num_uns
define_scan_num
n dw 0
a dw n dup(?)
    
    