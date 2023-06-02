  .model tiny
  .code
  org 100h
  include _abc.mac      
Start:
  CLS
  VIDEO
  mov BX, 12*160 + 40*2
  mov DX, 2
  mov CH, '0'
  mov CL, '.'

  
  mov AL, '+'
  mov AH, 2Ah
  add BX, 162
  sub CH, 2
  sub CL, 2
  CALL MET
  
  PAUSE 
  STOP

MET:
  mov ES:[BX], CH
  mov AH, 10h
  int 16h
  cmp AL, 27
  jnz MET1
    STOP
  MET1:
    mov ES:[BX], CL
    add BX, DX
    jmp MET
  ret

end Start
