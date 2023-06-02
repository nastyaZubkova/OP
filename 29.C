

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
    int x,c;
    int k;
    clrscr();
    c = 1;
    printf("введи ");
    scanf("%s", T);
    k = strlen(T);
    for(x=0; x<k; x++)
	{
	  textcolor(c);
	  cprintf("%c", T[x]);
	  c++;
	  if (c>15) c=1;
	}
    getch();
  }
