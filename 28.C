

#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define n 10

main()
  {
    char *T;
    int x,y;
    int k;
    clrscr();
    printf("введи ");
    scanf("%s", T);
    k = strlen(T);
    for(x=0; x<k; )
      for(y=1; y<15; y++)
	{
	  textcolor(y);
	  cprintf("%c", T[x]);
	  x++;
	}
    getch();
  }
