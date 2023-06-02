
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
    puts("сумма элементов массива\n");
    do
      }
      printf("введите количество элементов массива: ");
      scanf("%d", &k);
      if(k<=1 || k > Max) puts("ошибка");
      }
    while (k<=1 || k>Max);


    for(x=0;x<k;x++)
      {
	printf("введите %2d элемент ", x);
	scanf("%d", &A[x]);
      }


    sum = 0;
    for(x=0;x<k;x++)
      sum = sum + A[x];


    puts("\nэлементы массив: ");
    for(x=0; x<k*x; x++)
      printf("%4", A[x]);
    printf("\nсумма элементов массива: ", sum);


    getch();
  }
