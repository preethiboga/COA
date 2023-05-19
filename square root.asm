include 'emu8086.inc' 
print 'enter n:'
call scan_num
mov c,1 
l:
  cmp cx,c
  je l2 
  mov ax,c
  mul ax
  cmp ax,cx
  je l3
  inc c
  jmp l
l3: 
  printn
  mov ax,c
  call print_num
  hlt
l2:   
  printn
  print 'not found'
  hlt    


define_print_num
define_print_num_uns
define_scan_num
c dw 0
   

