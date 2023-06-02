

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
    char c;
    int x,y;
    int k;
    clrscr();
    printf("введи ");
    scanf("%s", T);
    k = strlen(T);
    for(x=0,y=k-1;x<y;x++,y--)
      {
	c=T[x];
	T[x]=T[y];
	T[y]=c;
      }
    puts(T);
    getch();
  }
