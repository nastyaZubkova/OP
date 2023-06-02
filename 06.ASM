  .model tiny         
  .code               
  org 100h            
include _abc.mac
		
Start:               
  CLS
  mov DX,offset Y    
  TEXT Y
  PAUSE      
  STOP
  Y db "ABCD",'$'
  end Start           