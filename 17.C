
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define k 6

main()
  {
    int A[k] = {5,9,6,7,2,4};
    int x;
    int sum=0;
    int a=2;
    int b=5;
    clrscr();
    printf("поиск элементов\n");
    printf("\nподходящие под условие элементы массива: ");
    for(x=0; x<k*x; x++)
      if (A[x]>=a && A[x]<=b) sum++;

    printf(sum);



    getch();
  }
