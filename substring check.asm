include 'emu8086.inc' 
mov cx,0
print 'enter str:'
mov ah,10
lea dx,str1
mov str1,100
int 21h
printn
lea dx,str1+2
mov ah,09h
int 21h
printn
print 'enter substr:'
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
  mov dl,str2[di]
  cmp dl,'$'
  je l1 
  inc c
  inc di
  jmp l
l1: 
  mov al,str1[si]
  mov di,2 
  mov cx,0
l2:
  mov al,str1[si]
  mov dl,str2[di] 
  cmp al,'$'
  je l4
  cmp dl,'$'
  je l4
  cmp al,dl
  je l3 
  jne l7
l7:  
  cmp cx,0
  je  l6
  jmp l1
l6:
  inc si
  jmp l1  
l3:
  inc si
  inc di
  inc cx
  jmp l2 
l4:
  cmp cx,c
  je l5
  print 'not found'
  hlt
l5:
  print 'found'
  hlt          

  
define_print_num
define_print_num_uns  
str1 db 100 dup('$')
str2 db 100 dup('$') 
c dw 0  
  