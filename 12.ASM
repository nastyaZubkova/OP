  .model tiny
  .code
  org 100h
  include _abc.mac      
Start:
  CLS                   
 ; mov AL, DS: 118h
 ; PRINT                     
   
 ; mov AL, Y+2
 ; PRINT 

 ; mov AL, y[2]
 ; PRINT
  
 ; mov BX, offset y
 ; INC BX 
 ; INC BX ;ADD BX,2
 ; MOV AL, [BX]
 ; PRINT

 ; mov BX, offset y+2
 ; mov AL, [BX]
 ; PRINT

 ; mov BX, 2
 ; mov AL, Y[BX]
 ; PRINT

  mov BX, offset y
  mov SI, 2
  mov AL, [BX][SI]
  PRINT
  PAUSE                 
  STOP                  
  y db "Hello", '$'
end Start
