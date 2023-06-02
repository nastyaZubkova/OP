  .model tiny
  .code
  org 100h
  include _abc.mac      
Start:
  CLS
  VIDEO
  mov BX, 0
  mov CX, 25*80
  mov AL, 'A'             
  mov AH, 2Ah
Met:
  mov ES:[BX], AL
  mov ES:[BX+1],AH
  add BX, 2
  dec CX
  jnc Met

  PAUSE                
  STOP                 
 

end Start
