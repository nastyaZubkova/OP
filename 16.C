
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define Max 100

main()
  {
    int A[Max];
    int k;
    int x;
    int sum;
    clrscr();
    puts("�㬬� ������⮢ ���ᨢ�\n");
    do
      }
      printf("������ ������⢮ ������⮢ ���ᨢ�: ");
      scanf("%d", &k);
      if(k<=1 || k > Max) puts("�訡��");
      }
    while (k<=1 || k>Max);


    for(x=0;x<k;x++)
      {
	printf("������ %2d ������� ", x);
	scanf("%d", &A[x]);
      }


    sum = 0;
    for(x=0;x<k;x++)
      sum = sum + A[x];


    puts("\n�������� ���ᨢ: ");
    for(x=0; x<k*x; x++)
      printf("%4", A[x]);
    printf("\n�㬬� ������⮢ ���ᨢ�: ", sum);


    getch();
  }
