
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>

void input(int *t)
  {
    do
      {
	printf("введи ");
	scanf("%d", t);
	if(*t<0) puts("ошибка");
      }
    while (*t<0);
  }

main()

  {
    int A,B,C;
    clrscr();
    input(&A);
    input(&B);
    input(&C);
    printf("%2d%2d%2d\n", A, B, C);
    getch();
  }
