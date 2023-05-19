include 'emu8086.inc' 
mov bx,5
mov si,0 
mov a[si],1
add si,2 
l1:
  cmp n,5
  je l2
  mov cx,n
  mov ax,1
  fact:
    mov dx,cx
    mul dx
    loop fact
  mov a[si],ax
  add si,2
  inc n
  jmp l1
l2:
  mov n,bx
  mov si,0
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
 hlt   
define_print_num
define_print_num_uns
define_scan_num
n dw 1
a dw n dup(?) 
        
    
     