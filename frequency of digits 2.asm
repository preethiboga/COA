include 'emu8086.inc'
call scan_num
printn   
mov ax,cx
mov bx,10
l1:
  cmp ax,0
  je l2
  mov dx,0
  div bx
  mov a1,ax
  mov r,dx
l3: 
  mov ax,cx
  mov c,0
l4:
  cmp ax,0
  je l5
  mov dx,0
  div bx
  cmp dx,r
  je l6
  jmp l4
l6:
  inc c
  jmp l4
l5:
  mov ax,r
  mul m
  mov si,ax
  cmp a[si],0
  je l7 
  jne l8
l7:  
  mov dx,c
  mov a[si],dx
  mov ax,r
  call print_num   
  print '->'
  mov ax,c
  call print_num
  printn
  mov ax,a1
  jmp l1
l8:
  mov ax,a1
  jmp l1
l2:
  hlt  
define_print_num
define_print_num_uns
define_scan_num
a1 dw 0
r dw 0
m dw 2   
c dw 0
a dw 0,0,0,0,0,0,0,0,0,0      
  
  
  