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
    int x,j, c;
    int k;  
    char *y = "ABCD";
    clrscr();
    k = strlen(T);
    j = 0;
    puts(T);
    for(x=0;x<k;x++)
      {
	T[x] = T[x] ^ y[j];
	j++;
	if (j>=strlen(y))
	  j = 0;

      }
    puts(T);
    j = 0;
    for(x=0;x<k;x++)
      {
	T[x] = T[x] ^ y[j];
	j++;
	if (j>=strlen(y))
	  j = 0;

      }
    puts(T);

    getch();
  }
