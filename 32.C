

#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>


main()
  {
    char *T = "ABCDEF";
    int x,y,k;
    char c;
    clrscr();
    k = strlen(T);
    randomize();
    for(x=0; x<k; x++)  // for(temp=0;temp<k*3;temp++)
      {
	//x=random(k);
	y = random(k);
	c = T[x];
	T[x] = T[y];
	T[y] = c;
	/*
	  do
	    x = random(k);
	  while (T[x]==0);
	  printf("%c", T[x]);
	  T[x]=0;
       */

      }
      puts(T);

    getch();
  }
