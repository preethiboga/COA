include 'emu8086.inc'
print 'enter n:'
call scan_num
printn
mov bx,cx
mov n,cx       
mov si,0
print 'enter elements:'
l1:
 cmp n,0
 je l2
 call scan_num
 printn
 mov a[si],cx
 add si,2
 dec n
 jmp l1 
l2:
 mov si,0
 mov n,bx
 print 'elements are:'
l3:
  cmp n,0
  je l4
  mov ax,a[si] 
  call print_num 
  print " "
  add si,2
  dec n
  jmp l3
l4: 
  mov si,4
  mov n,bx 
  dec n
  dec n
  mov ax,0
l5:
  cmp n,0  
  jle l6
  add ax,a[si]
 add si,2
 add si,2 
 add si,2
 sub n,3
 jmp l5  
l6: 
 printn
 call print_num
 hlt 
 
    
define_scan_num
define_print_num
define_print_num_uns
n dw 0
a dw n dup(?)  
          
  
        