include 'emu8086.inc' 
print 'enter a:'
call scan_num 
printn
mov a,cx
mov ax,cx
mov si,cx  
print 'enter b:'
call scan_num
printn 
mov b,cx
mov bx,cx
mov di,cx
cmp ax,bx
je l1
jne l2
l1:
 mov cx,ax
 mov ax,a
 mov bx,b
 mul bx 
 div cx
 call print_num 
 hlt
l2:
 cmp ax,bx
 jl l3
 jg l4
l3:
  add ax,si
  cmp ax,bx
  je l1
  jne l2
l4:
  add bx,di
  cmp ax,bx
  je l1
  jne l2 
call print_num
define_print_num
define_print_num_uns
define_scan_num    
a dw 0
b dw 0   
