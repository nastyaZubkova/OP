  .model tiny
  .code
  org 100h
  include _abc.mac      
Start:
  CLS
  TEXT T
  CALL MAS

  WRITELN
Met2:
  mov BX, 0 
  mov DL, 0
  mov CX, Len - 1
Met:
  mov AL, y[BX]
  mov AH, y[BX + 1]
  cmp AH, AL
  jnc Met1
  obmen [BX], [SI]
    mov y[BX], AH
    mov y[BX + 1], AL
    mov DL, 1
  Met1:
    INC BX
    DEC CX
    jnz Met
    cmp DL, 0
    jnz Met2
  
text t1
call mas
                    
  PAUSE                
  STOP                  

Y db 7, 9, 5, 8, 6, 3
Len = $ - Y
 
T  db "начальный массив:          ", '$'
T1 db "Массив в обратном порядке: ", '$'
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
