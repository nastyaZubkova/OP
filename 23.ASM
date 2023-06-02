  .model tiny
  .code
  org 100h
  include _abc.mac      
Start:
  CLS
  VIDEO
  mov AX, 4E23h
  mov AH, 4Eh
  mov ES:[BX], AX
  PAUSE                
  STOP                 
 

end Start
