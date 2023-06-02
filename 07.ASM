  .model tiny         
  .code               
  org 100h            
include _abc.mac
		
Start:               
  CLS
  kursor 12,40   
  TEXT Y
  PAUSE      
  STOP
  Y db "ABCD",'$'
  end Start           