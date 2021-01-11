#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
	int opcion1=0, opcion2=0;
	int promedio1=0, promedio2=0, promedio3=0;
	int precio=0, cant=0, cant2=0, cant3=0;
	int tipo=0;
	int mayor=0;
	int asiento=0;
	int conteo=0;
	int personas=0;
	int autobus1_C[10][4];
	int autobus2_T[10][4];
	int autobus3_A[10][4];
	int total1_C[10][4];
	for(int i=0;i<10;i++){			
		for(int j=0; j<4;j++){
			autobus1_C[i][j]=0;
			autobus2_T[i][j]=0;
			autobus3_A[i][j]=0;
		}
	}
	do{
		printf("TERMINAL MABIK\n");
		printf("1.-TLAXCALA - YUCATAN\n");
		printf("2.-MEXICO - PUEBLA\n");
		printf("3.-GUADALAJARA- MEXICO\n");
		scanf("%i",&opcion1);
		
		switch(opcion1){
			
		case 1: 
			opcion2=0;
			asiento=0;
			personas=0;
			for(int i=0;i<10;i++){
				for(int j=0; j<4;j++){
					personas+=1;
					if(autobus2_T[i][j]==1){
					}else{
						printf("  %d",personas);
					}
				}
				printf("\n\n");
			}
			printf("Horario\n");
			printf("1.- 9:00am TLAXCALA - YUCATAN\n");
			scanf("%d",&opcion2);
			system("cls");
			
			
			printf("Que asiento quieres?\n");
			scanf("%d",&asiento);
			printf("Tipo de boleto\n");
			printf("1.-niño\n2.- adulto\n");
			scanf("%d",&tipo);
			if(tipo==1){
				precio=50;
			}
			if(tipo==2){
				precio=100;
			}
			switch(opcion2){
			case 1:
				conteo=0;
				
				for(int i=0;i<10;i++){
					for(int j=0; j<4;j++){
						conteo=conteo+1;
						if(autobus1_C[i][j]==1 && conteo==asiento){
							system("cls");
							printf("compra ya existente escoge otro boleto\n");
						}else{
							if(conteo==asiento){
								if(autobus1_C[i][j]==0){
									system("cls");
									printf(" COMPRA REALIZADA\n");
									printf("Precio: $%d \n",precio);
									cant=cant+precio;
									autobus1_C[i][j]=1;
									total1_C[i][j]=precio;
								}else{
									
								}
							}
						}
						
						if(conteo==40){
							personas=0;
							for(int i=0;i<10;i++){
								for(int j=0; j<4;j++){
									personas+=1;
									if(autobus1_C[i][j]==1){
									}else{
										printf("  %d",personas);
									}
								}
								printf("\n\n");
							}
						}
						
					}
				}
				break;
			default:
				printf("opcion no valida vuelve a intentar\n");
				break;
			}
			break;
		case 2:
			opcion2=0;
			asiento=0;
			personas=0;
			for(int i=0;i<10;i++){
				for(int j=0; j<4;j++){
					personas+=1;
					if(autobus2_T[i][j]==1){
					}else{
						printf("  %d",personas);
					}
				}
				printf("\n\n");
			}
			printf("Horario\n");
			printf("1.- 9:00am MEXICO - PUEBLA\n");
			scanf("%i",&opcion2);
			printf("Que asiento quieres?\n");
			scanf("%i",&asiento);
			printf("Tipo de boleto\n");
			printf("1.-niño\n 2.- adulto\n");
			scanf("%i",&tipo);
			
			if(tipo==1){
				precio=50;
			}
			if(tipo==2){
				precio=100;
			}
			switch(opcion2){
			case 1:
				conteo=0;
				for(int i=0;i<10;i++){
					for(int j=0; j<4;j++){
						conteo=conteo+1;
						if(autobus2_T[i][j]==1 && conteo==asiento){
							system("cls");
							printf("compra ya existente escoge otro boleto\n");
						}else{
							if(conteo==asiento){
								if(autobus2_T[i][j]==0){
									printf(" COMPRA REALIZADA\n");
									printf("Precio: $%d \n",precio);
									cant2=cant2+precio;
									promedio1=+1;
									autobus2_T[i][j]=1;
									total1_C[i][j]=precio;
								}else{
									
								}
							}
						}
						if(conteo==40){
							personas=0;
							for(int i=0;i<10;i++){
								for(int j=0; j<4;j++){
									personas+=1;
									if(autobus2_T[i][j]==1){
									}else{
										printf("  %d",personas);
									}
								}
								printf("\n\n");
							}
						}
					}
				}
			}
			break;
		case 3:
			opcion2=0;
			asiento=0;
			personas=0;
			for(int i=0;i<10;i++){
				for(int j=0; j<4;j++){
					personas+=1;
					if(autobus2_T[i][j]==1){
					}else{
						printf("  %d",personas);
					}
				}
				printf("\n\n");
			}
			printf("Horario\n");
			printf("1.- 9:00am GUADALAJARA- MEXICO\n");
			scanf("%d",&opcion2);
			printf("¿Que asiento quieres? asientos 40\n");
			scanf("%d",&asiento);
			printf("Tipo de boleto\n");
			printf("1.-niño\n2.- adulto\n");
			scanf("%d",&tipo);
			
			if(tipo==1){
				precio=50;
			}
			if(tipo==2){
				precio=100;
			}
			switch(opcion2){
			case 1:
				conteo=0;
				for(int i=0;i<10;i++){
					for(int j=0; j<4;j++){
						conteo=conteo+1;
						if(autobus3_A[i][j]==1 && conteo==asiento){
							system("cls");
							printf("compra ya existente escoge otro boleto\n");
						}else{
							if(conteo==asiento){
								if(autobus3_A[i][j]==0){
									printf(" COMPRA REALIZADA\n");
									printf("Precio: $%d \n",precio);
									cant3=cant3+precio;
									promedio1=+1;
									autobus3_A[i][j]=1;
									total1_C[i][j]=precio;
								}else{
									
								}
							}
						}
						if(conteo==40){
							personas=0;
							for(int i=0;i<10;i++){
								for(int j=0; j<4;j++){
									personas+=1;
									if(autobus3_A[i][j]==1){
									}else{
										printf("  %d",personas);
									}
								}
								printf("\n\n");
							}
						}
					}
				}
			}
			break;
		default:
			printf("opcion no valida vuelve a intentar\n");
			break;
		}
		
		
	}while(opcion1!=4);
	
	for(int i=0;i<10;i++){
		for(int j=0; j<4;j++){
			if(autobus1_C[i][j]==1){
				promedio1+=1;
			}else{
				
			}
		}
	}
	for(int i=0;i<10;i++){
		for(int j=0; j<4;j++){
			if(autobus2_T[i][j]==1){
				promedio2+=1;
			}else{
				
			}
		}
	}
	for(int i=0;i<10;i++){
		for(int j=0; j<4;j++){
			if(autobus3_A[i][j]==1){
				promedio3+=1;
			}else{
				
			}
		}
	}
	mayor=promedio1;
	if(promedio1>promedio2){
		mayor=promedio1;
	}
	if(promedio2<promedio3){
		mayor=promedio2;
	}
	printf(" \n\n\t \t\t    ******V E N T A S DE C O R R I D A S M A B I K ******** \n\n");
	printf("\n\t\t\t   TLAXCALA - YUCATAN              MEXICO - PUEBLA                GUADALAJARA- MEXICO");
	printf("\n\nNo. de boletos vendidos");
	printf("\t\t  %d",promedio1);
	printf("\t\t\t\t  %d",promedio2);
	printf("\t\t\t\t  %d",promedio3);
	printf("\n\nCantidad de dinero");
	printf("\t\t $%d",cant);
	printf("\t\t\t\t $%d",cant2);
	printf("\t\t\t\t $%d",cant3);
	//printf(" \n\nMayor cantidad de boletos vendidos  %d",mayor);
	
	return 0;
}
