PROGRAM CodeFormaitting(INPUT, OUTPUT);  {со строковыми литералами и с переменными нескольких типов + нормальное количество;}
VAR
  Ch, Stop: CHAR;
  F1: TEXT;
BEGIN
  Stop := 'A';
  REWRITE(F1);
  WHILE NOT EOLN
  DO
    BEGIN
      READ(INPUT, Ch);
      IF EOLN
      THEN
        WRITE(F1, Ch);
      IF NOT EOLN
      THEN
        BEGIN          
          WHILE Ch <> ''''
          DO
            BEGIN 
              IF Ch <> ' '
              THEN     
                WRITE(F1, Ch);
              READ(INPUT, Ch);
              IF EOLN
              THEN
                BEGIN
                  WRITE(F1, Ch);
                  Ch := '''';
                  Stop := 'B'
                END                                                                                                                                                 
            END;    
          IF Stop = 'A'
          THEN              
            BEGIN
              WRITE(F1, Ch);
              READ(INPUT, Ch);
              WHILE Ch <> ''''
              DO
                BEGIN 
                  WRITE(F1, Ch);
                  READ(INPUT, Ch)
                END;  
              WRITE(F1, Ch);                  
            END
        END      
    END;      
  RESET(F1);
  READ(F1, Ch);
  IF Ch <> 'B' 
  THEN
    WRITE(OUTPUT, 'ВХОДНЫЕ ДАННЫЕ НЕ СООТВЕТСТВУЮТ КОРРЕКТНОЙ ПРОГРАММЕ');
  IF Ch = 'B'
  THEN             
    BEGIN
      READ(F1, Ch);
      IF Ch = 'E'
      THEN
        BEGIN
          WHILE Ch <> 'N'
          DO
            BEGIN 
              READ(F1, Ch);
              IF EOLN(F1)
              THEN
                BEGIN
                  Stop := 'C';
                  Ch := 'N'
                END
            END;
      IF Stop <> 'C'
      THEN          
        WRITELN(OUTPUT, 'BEGIN')
        END
    END;  
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      IF Ch <> ';'
      THEN 
        READ(F1, Ch);
      IF Ch = '('
      THEN
        BEGIN
          Stop := 'E';
          WHILE Ch <> ')'
          DO
            READ(Ch);
          IF Ch = ')'
          THEN
            Stop := 'F'
        END;
      IF Ch <> ''''
      THEN
        BEGIN  
          IF Ch = ';'
          THEN                  
            BEGIN
              Stop := 'D';
              WRITE(OUTPUT, Ch);      
              READ(F1, Ch);
              WHILE Ch = ';'
              DO   
                READ(F1, Ch);
              WRITELN(OUTPUT);
            END;    
          IF (Ch = ',')
          THEN
            BEGIN
              WRITE(OUTPUT, Ch, ' ');
              READ(F1, Ch);
              WHILE Ch = ','
              DO   
                READ(F1, Ch)
            END;
          IF Stop <> 'E'
          THEN
            BEGIN  
            IF Ch = 'W'
            THEN
              BEGIN     
                READ(F1, Ch);
                IF Ch <> 'R'
                THEN
                  WRITE(OUTPUT, 'W');
                IF Ch = 'R'
                THEN
                  BEGIN
                    WHILE Ch <> 'E'
                    DO 
                      READ(F1, Ch);
                    WRITE(OUTPUT, '  WRITE');    
                    READ(F1, Ch)
                  END
              END; 
            IF Ch = 'R'
            THEN
              BEGIN     
                READ(F1, Ch);
                IF Ch <> 'E'
                THEN
                  WRITE(OUTPUT, 'R');
                IF Ch = 'E'
                THEN
                  BEGIN
                    READ(F1, Ch);
                    IF Ch = 'A'
                    THEN
                      BEGIN
                        WHILE Ch <> 'D'
                        DO 
                          READ(F1, Ch);
                        WRITE(OUTPUT, '  READ');    
                        READ(F1, Ch)
                      END;
                    IF Ch = 'S'
                    THEN
                      BEGIN
                        WHILE Ch <> 'T'
                        DO 
                          READ(F1, Ch);
                        WRITE(OUTPUT, '  RESET');    
                        READ(F1, Ch)
                      END;
                    IF Ch = 'W'
                    THEN
                      BEGIN
                        WHILE Ch <> 'E'
                        DO 
                          READ(F1, Ch);
                        WRITE(OUTPUT, '  REWRITE');    
                        READ(F1, Ch)
                      END  
                END
            END;      
          IF Ch = 'E'
          THEN
            BEGIN     
              READ(F1, Ch);
              IF Ch <> 'N'
              THEN
                WRITE(OUTPUT, 'E');
              IF Ch = 'N'
              THEN
                BEGIN    
                  READ(F1, Ch); 
                  IF Ch = 'D'
                  THEN
                    BEGIN
                      IF Stop <> 'D'
                      THEN
                        WRITELN(OUTPUT);
                      WRITE(OUTPUT, 'END');      
                      READ(F1, Ch)
                    END
                END
            END                                
        END
        END;
      IF Ch = ''''
      THEN
        BEGIN
          WRITE(OUTPUT, Ch);
          READ(F1, Ch); 
          WHILE Ch <> '''' 
          DO
            BEGIN
              WRITE(OUTPUT, Ch);      
              READ(F1, Ch)
            END
        END;
      IF Ch <> ';'
      THEN  
        WRITE(OUTPUT, Ch)  
    END;  
  WRITELN
END.        
