  .model tiny
  .code
  org 100h
  include _abc.mac      
Start:
  CLS                   
  TEXT Y
  mov BX, Len - 1
  mov CX, Len
Met:
  mov AL, y[BX]
  PRINT   
  DEC BX
  DEC CX
  JNZ Met                  
  
  PAUSE                
  STOP                  

Y db  "Привет", 13, 10, '$'    
Len = $ - Y - 3
end Start
