

#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define n 10

main()
  {
    char *T = "привет Вася";
    int x;
    int k;  
    char y = 12;
    clrscr();
    k = strlen(T);
    puts(T);
    for(x=0;x<k;x++)
      T[x] = T[x] ^ y;
    puts(T);
    for(x=0;x<k;x++)
      T[x] = T[x] ^ y;
    puts(T);
    
    getch();
  }
