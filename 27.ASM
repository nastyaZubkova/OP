  .model tiny
  .code
  org 100h
  include _abc.mac      
Start:
  CLS
  VIDEO
  mov BX, 3*160 + 20*2
  mov AX, 4E23h
  mov CH, 5
  mov CL, 8 

  mov DX, 2             
  CALL Line
  
  mov DX, 160
  CALL Line
  
  mov DX, -2
  CALL Line
  
  mov DX, -160
  CALL Line
 
  PAUSE 
  STOP 
 
Line:
  PUSH CX
Line1:
  mov ES:[BX], AL
  mov ES:[BX+1], AH
  add BX, DX
  dec CL
  jnz Line1
  sub BX, DX
  POP CX
  XCHG CH, CL
  ret

RAMKA:
  mov DX, 2
  CALL Line
  mov DX, 160
  CALL Line
  mov DX, -2
  CALL Line
  mov DX, -160
  CALL Line


end Start
