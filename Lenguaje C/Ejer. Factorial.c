#include <stdio.h>

int main(int argc, char *argv[]) {
	int num, i, sum=1, suma=1;
	printf("Ingrese el numero ");
	scanf("%d",&num);
	for (i=num;i>1;i--)
	{
		sum=sum*i;
		suma=suma+i;
	}
	printf("\nFactorialde %d!= %d",num,sum);
	printf("\nFactorialde %d!= %d",num,suma);
	
	return 0;
}

