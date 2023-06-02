main()
   {
   int R;   //радиус
   float S; //площадь
   clrscr();
   puts("название");
   printf("\n Введи радиус: ");
   scanf("%d", &R);
   S = 3.14 * R * R;
   printf("Площадь круга: %0.2f\n", S);
   getch();
   }