#include <stdio.h>
#include <time.h>
#include <windows.h>
#include <conio.h>
int main(int argc, char *argv[]) {
    /////////////////////////
	int Px, Py;
    int x,y,nummax=10, puntos=0, ganar;     //nunmax tamaño de matriz
	char matriz[21][21],tecla;
	for(y=0;y<nummax;y++)
	{ //imprimir matriz
		for(x=0;x<nummax;x++)
		{
			matriz[x][y]='.'; // colocar el simbolo a mostrar
		}
		printf("\n");
	}
	bool opcion = false; //declara opcion como variable booleana y la inicia
	Px=9, Py=9; // pocision en la cual se coloca "o"
	while(!opcion)
	{
		printf(" Puntos %d\n", puntos);
		matriz[Px][Py]='o';
		for(y=0;y<nummax;y++){ //imprimir matriz
			
			for(x=0;x<nummax;x++)
			{
				printf("%c ",matriz[x][y]); // impresión de pantalla
			}
			printf("\n");
		}
		matriz[Px][Py]=' '; //eliminacion de rasto de "o"
		if(kbhit()){
            
			tecla = getch();
            printf(" ");
			if (tecla == 'a') //izquierda
			{
				Px--;
				if(Px<0) // evaluar si salio del area 
				{
					opcion=true;
				}
			}
			if (tecla == 'd')//derecha
			{
				Px++;
				if(Px>=nummax)
				{
					opcion=true;
				}
			}
			if (tecla == 'w')//arriba
			{
				Py--;
				if(Py<0)
				{
					opcion=true;
				}
			}
			if (tecla == 's')//abajo
			{
				Py++;
				if(Py>=nummax)
				{
					opcion=true;
				}
			}
			if(matriz[Px][Py]=='.')
			{
				puntos++; // contador de los puntos
				if(puntos==99) //puntos para ganar
				{
					opcion=true;
					ganar=1;// evaluar
				}
			}
            printf(" ");
		}
		system("cls");
	}
	if(ganar==1){
		printf("\n\n\n\t\t *********************************\n"); 
		printf("\n\t\t **** H A Z  G A N A D O ..!  ****\n");
		printf("\n\n\t\t *********************************\n");
		
	}else{
		printf("\n\n\n\t\t *********************************\n"); 
		printf("\n\t\t ********   P E R D I O  *********\n");
		printf("\n\n\t\t *********************************\n");
	}
	return 0;
}
