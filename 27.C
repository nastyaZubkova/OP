

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
    int x;
    int k;
    clrscr();
    printf("введи ");
    scanf("%s", T);
    k = strlen(T);
    for(x=k-1; x>=0; x--)
      printf("%c\n", T[x]);
    getch();
  }
