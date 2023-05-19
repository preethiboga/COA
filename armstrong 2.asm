include 'emu8086.inc'
call scan_num 
printn
mov ax,cx
mov n,cx  
mov bx,10
l1:
  cmp ax,0
  je l2 
  mov dx,0
  div bx
  inc c
  jmp l1
l2:    
  mov ax,n
  mov cx,c
l3:
  cmp ax,0
  je l4
  mov dx,0
  div bx
  mov a,ax
  mov r,dx
  mov cx,c
  mov ax,1
  jmp power   
power:  
  mov di,r
  mul di
  loop power
l5:
  add s,ax
  mov ax,a
  jmp l3
l4:
  mov si,s
  cmp si,n
  je l6
  jne l7
l6:
  print 'armstrong'
  hlt
l7:
  print 'not armstrong'    
  hlt
define_scan_num
define_print_num
define_print_num_uns
n dw 0
c dw 0
a dw 0
r dw 0
s dw 0      
  
    
  
  
  
       
  