
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define k 3

main()
  {
    typedef struct {char *Fam; int Zar;} tip1;
    tip1 M[k];
    int x;
    M[0].Fam = "Иванов";     M[0].Zar = 300;
    M[1].Fam = "Ивановский"; M[1].Zar = 25;
    M[2].Fam = "Кац";        M[2].Zar = 1000;

    clrscr();

    for(x=0;x<k;x++)
      {
	printf("%2d ", x+1);
	printf("%-15s", M[x].Fam);
	printf("%6d", M[x].Zar);
	printf("\n");
      }

	//printf("%2d %-15s%6d\n", x+1, M[x].Fam, M[x].Zar);

    getch();
  }
