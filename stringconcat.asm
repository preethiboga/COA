include 'emu8086.inc'
print 'enter string1:'
mov ah,10
lea dx,str1
mov str1,200
int 21h  
printn
lea dx,str1+2
mov ah,09h
int 21h
printn
print 'enter string2:'
mov ah,10
lea dx,str2 
mov str2,100
int 21h 
printn 
lea dx,str2+2
mov ah,09h
int 21h 
mov si,2
mov di,2
l:
  mov dl,str1[si]
  cmp dl,'$'
  je l1
  inc si
  jmp l
l1:
  mov dl,str2[di]
  cmp dl,'$'
  je l2  
  mov str1[si],dl  
  inc si
  inc di 
  jmp l1
l2:  
  printn
  lea dx,str1+2
  mov ah,09h
  int 21h   
  hlt
    
  
ret 
define_print_num
define_print_num_uns
str1 db 200 dup('$')  
str2 db 100 dup('$')
