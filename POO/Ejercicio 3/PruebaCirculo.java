public class PruebaCirculo{
	public static void main(String[] args){
		Circulo circulo1;
		circulo1 = new Circulo();

		circulo1.setRadio(30.2);

		System.out.println("Perimetro: "+circulo1.perimetro( circulo1.getRadio()));
		System.out.println("Area: "+circulo1.area(circulo1.getRadio()));

	}
}