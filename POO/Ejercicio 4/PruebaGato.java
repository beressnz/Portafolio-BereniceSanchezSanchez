public class PruebaGato{
	public static void main(String[] args){
		Gato gato1;//se define el objeto
		gato1 = new Gato();//se crea el objeto
		System.out.println("El peso del gato es: "+gato1.peso);
		gato1.color = "negro";
		gato1.nombre = "Titi";
		gato1.peso = 2.5;
		System.out.println("El nuevo peso del gato es: "+gato1.peso);
		Gato gato2 = new Gato("Misufuz", "gris"); //se define y se crea el gato en una línea
		System.out.println("El gato2 se llama: "+gato2.nombre);
		System.out.println("El gato2 es de color: "+gato2.color);
		System.out.println("El gato2 pesa: "+gato2.peso+" kilos");
		gato1.dormir();
		gato2.comer("atún");
		gato2.dormir();
	}
}