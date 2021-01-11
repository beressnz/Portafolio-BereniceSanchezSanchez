#include <stdio.h>

int main(int argc, char *argv[]) {
	int n,j, i,a;
	printf("Ingrese el tamaño    ");
	scanf("%d",&n);
	printf("\n");
	for(j=1;j<=n;j++){
		for(i=1;i<=j;i++)
		{
			printf(" * ");
		}
		printf("\n");
	}
	printf("\n\n");
	for(j=n;j>=1;j--)
	{
		for(i=j;i>=1;i--)
		{
			printf(" * ");
		}
		printf("\n");
	}
	printf("\n\n");
	for (j=0;j<=n;j++) {
		for (i=0;i<=n-j;i++) {
			printf(" ");
		}
		for (a=1;a<=j;a++) {
			printf(" *");
		}
		printf("\n");
	}
	printf("\n\n");
	for (j=n;j>=1;j-=1) {
		for (i=0;i<=n-j;i+=1) {
			printf(" ");
		}
		for (a=1;a<=j;a+=1) {
			printf(" *");
		}
		printf("\n");
	}
	printf("\n\n");
	
	printf("\n");
	
	for(i=1;i<=j;i--){
		for(j=1;j<=n;j++)
		{
			printf(" * ");
		}
		printf("\n");
	}
	return 0;
	
}

	

