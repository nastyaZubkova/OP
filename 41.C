
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>

int wwod(char *z)
  {
    int t;
    do
      {
	printf("введи %s сторону ", z);
	scanf("%d", &t);
	if(t<0) puts("ошибка");
      }
    while (t<0);
    return t;
  }

main()

  {
    int A,B,C;
    clrscr();
    A = wwod("первую");
    B = wwod("вторую");
    C = wwod("третью");
    printf("%2d%2d%2d\n", A, B, C);
    getch();
  }
