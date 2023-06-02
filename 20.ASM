  .model tiny
  .code
  org 100h
  include _abc.mac      
Start:
  CLS                   
  mov BX, offset y
  mov SI, offset y + Len - 1   
Met:
  obmen [BX], [SI]
  INC BX
  DEC SI
  CMP BX, SI 
  JC Met

                    
  PAUSE                
  STOP                  

Y db 7, 9, 5, 8, 6, 3
Len = $ - Y
include _dec.pp
MAS:
  PUSH AX
  PUSH BX
  PUSH CX
  mov BX, offset Y
  mov CX, Len
  MAS1:
    mov AL, [BX]
    CALL Decal
    INC BX
    DEC CX
    JNZ MAS1
    POP CX
    POP BX
    POP AX
Ret

end Start
