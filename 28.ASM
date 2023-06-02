  .model tiny
  .code
  org 100h
  include _abc.mac      
Start:
  CLS
  VIDEO
  mov BX, 3*160 + 20*2
  mov AX, 4E23h
  mov CH, 10
  mov CL, 20
  CALL box
  
  mov AL, '+'
  mov AH, 2Ah
  add BX, 162
  sub CH, 2
  sub CL, 2
  CALL box
  
  PAUSE 
  STOP
 
box:
  PUSH BX
  PUSH CX
box2:
  PUSH CX
  PUSH BX
box1:
  mov ES:[BX], AX
  add BX, 2
  dec CL
  jnz box1
  POP BX 
  add BX, 160
  POP CX
  dec CH
  jnz box2
  POP CX
  POP BX
  ret

end Start
