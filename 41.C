
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
	printf("����� %s ��஭� ", z);
	scanf("%d", &t);
	if(t<0) puts("�訡��");
      }
    while (t<0);
    return t;
  }

main()

  {
    int A,B,C;
    clrscr();
    A = wwod("�����");
    B = wwod("�����");
    C = wwod("�����");
    printf("%2d%2d%2d\n", A, B, C);
    getch();
  }
