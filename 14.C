
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define n 2
#define k 3

main()
  {
    int x,y;
    int s=1;
    clrscr();

   // for(x=1; x<=k; x++) s = s*n;  ᯮᮡ 1
   s = pow(n,k); //ᯮᮡ2

    printf("%d � �⥯��� %d ࠢ�� %d", n, k, s);







    getch();
  }
