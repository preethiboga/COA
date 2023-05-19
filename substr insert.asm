include 'emu8086.inc'
print 'enter str1:'
mov ah,10
lea dx,str1
mov str1,200
int 21h
printn
lea dx,str1+2
mov ah,09h
int 21h
printn
print 'enter str2:'
mov ah,10
lea dx,str2
mov str2,100 
int 21h
printn
lea dx,str2+2
mov ah,09h
int 21h
printn
print 'enter position to insert:'
call scan_num 
mov si,2
mov di,2 
mov bx,0  
l5:
  mov dl,str1[si]
  cmp dl,'$'
  je l6
  inc si
  inc len 
  jmp l5
l6: 
  mov si,2
  cmp cx,len
  jg l7
  jmp l
l7:
 printn 
  print 'impossible'
  hlt
      
l: 
  mov p,si
  cmp cx,c
  je l3
  mov dl,str1[si]
  inc si
  inc c
  jmp l 

l3:  
  mov al,str1[si]
  cmp al,'$'
  je l4
  mov str3[bx],al 
  inc si
  inc bx
  jmp l3  
l4:
  mov si,p
  jmp l1 
    
l1:
  mov dl,str2[di] 
  cmp dl,'$'
  je l2
  mov str1[si],dl
  inc di
  inc si
  jmp l1  
l2: 
  printn
  lea dx,str1+2
  mov ah,09h
  int 21h  
  lea dx,str3
  mov ah,09h
  int 21h
  hlt
  
    
  
  
  
define_scan_num
str1 db 200 dup('$')
str2 db 100 dup('$')  
str3 db 100 dup('$')
c dw 0  
p dw 0  
len dw 0
