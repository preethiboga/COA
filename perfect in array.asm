include 'emu8086.inc'
mov si,0  
print 'enter n:'
call scan_num
printn
mov n,cx
mov bx,cx
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
  je l4
  mov ax,a[si] 
  mov a,ax
  mov cx,1
  mov c,ax 
  dec c
  mov bx,2
l2:  
  mov ax,a[si]
   cmp bx,c
   jg l3
   mov dx,0
   div bx 
   cmp dx,0
   je l5
   inc bx
   jmp l2
l5:
  add cx,bx
  inc bx
  jmp l2 
l3:
   cmp cx,a
   je l6  
   add si,2
   dec n
   jmp l1
l6:
  mov ax,cx
  call print_num
  print " "
  add si,2
  dec n
  jmp l1    
l4:
   hlt 
    
   
    
define_scan_num
define_print_num
define_print_num_uns
n dw 0
a dw ? 
c dw 0        