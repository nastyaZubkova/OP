  .model tiny         ;модель памяти, односегментная
  .code               ;начало сегментов кодов, начало сегментов данных, стек
  org 100h            ;программа начинается с сотой ячейки(100h)
PRINT macro
  mov AH,0Eh
  int 10h
endm
CLS macro
  mov AX,3
  int 10h
endm	
PAUSE macro
  mov AH,10h
  int 16h
endm
STOP macro
  mov AH,4Ch
  int 21h
endm		
Start:                ;начало текста программы(begin)
  CLS
  mov BX,offset Y     ;в регистр ВХ помещается адрес переменной У(номер ячейки)
Metka:
  mov AL,[BX]
  PRINT          
  inc BX
  cmp AL,0            ;сравнение AL с нулем
  jnz Metka           ;проверяем "Не ноль ли это" 
  PAUSE
  STOP
  Y db "ABCD",0
  end Start           ;конец текста программы(end.)