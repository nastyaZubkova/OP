  .model tiny
  .code
  org 100h
  include _abc.mac      
Start:
  CLS
  VIDEO
  mov BX, 0             
 
  mov AX, 1Bb1h
  CALL POL
  
  mov AX, 4CB2h
  CALL POL
  
  mov AX, 7Fb0h
  CALL POL
 
  PAUSE 
  STOP 

POL:
  mov BX, 1*26
POL2:
  mov ES:[BX], AL
  mov ES:[BX+1], AH
  add BX, 2
  jnz POL2
  ret

end Start
