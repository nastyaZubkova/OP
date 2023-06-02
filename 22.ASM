  .model tiny
  .code
  org 100h
  include _abc.mac      
Start:
  CLS
  VIDEO
  mov BX, 12*160 + 40*2
  mov AL, '#'              ;можно заменить mov AL, 23(35)h
  mov AH, 4Eh
  mov ES:[BX], AL
  mov ES:[BX+1],AH
  PAUSE                
  STOP                 
 

end Start
