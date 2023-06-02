  .model tiny         ;модель памяти, односегментная
  .code               ;начало сегментов кодов, начало сегментов данных, стек
  org 100h            ;программа начинается с сотой ячейки(100h)
include _abc.mac
Start:                ;начало текста программы(begin)
  CLS
  mov AL, 'A'
  mov CX, 26
Metka1:
  PRINT
  inc AL
  dec CX
  jnz Metka1 
  WRITELN   
  PAUSE
  STOP              
  end Start           ;конец текста программы(end.)