
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define k 4

main()
  {
    const C0 = 0, F0 = 2,/*невыбранные*/ C1 = 14, F1 = 4;//рамка
    char *T[k+1];
    int y[k+1], x[k+1];
    int j;
    int tek;
    char A, B;
    T[1] = " open "; y[1] = 10;  x[1] = 20;
    T[2] = " save "; y[2] = 12;  x[2] = 20;
    T[3] = " run  "; y[3] = 14;  x[3] = 20;
    T[4] = " quit "; y[4] = 16;  x[4] = 20;
    tek = 1;
    clrscr();
  Met1:
    for(j=1;j<=k;j++)
      {
	textcolor(C0); textbackground(F0);
	if (j == tek)
	  {
	    textcolor(C1); textbackground(F1);
	  }
	gotoxy(x[j], y[j]);
	cprintf("%s", T[j]);
      }
    A = getch();
    if (A == 0) B = getch();
    if (A==27) exit(0); //esc
    if (A==13) goto Met2; //enter
    if (A==0 && B==80) tek++;
    if (A==0 && B==72) tek--;
    if (tek > k) tek = 1; //tek=k
    if (tek < 1) tek = k; //tek=1
    goto Met1;
  Met2:
    textcolor(7);
    textbackground(0);
    gotoxy(50, 20);
    if(tek==1) cputs("открыть");
    if(tek==2) cputs("сохр");
    if(tek==3) cputs("вып");
    if(tek==4) exit(0);
    getch();
    gotoxy(50,20);
    printf("           ");
    goto Met1;
  }
