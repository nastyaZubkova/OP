PROGRAM Version0(INPUT, OUTPUT);
VAR
  Str, Str1: STRING;
BEGIN {Version0}  
  {WHILE NOT EOF
  DO
    READLN(Str);  }
  Str := 'abcd';
  Str1 := 'abc';  
  if Str > Str1
  then  
    WRITE('Str > Str1')  
  else
    if Str < Str1
    then  
      WRITE('Str < Str1')
    else  
      write('Str = Str1');
  writeln     
END. {Version0}  
