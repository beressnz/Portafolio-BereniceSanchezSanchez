public class Circulo{
	private Double radio,pi;
	
//Definimos el constructor
	public Circulo(){
		radio=0.0;
		pi=3.1416;
	}
	public Double perimetro(Double radio){
		return (2*pi*radio);
	}
	public Double area(Double radio){
		return (pi*(radio*radio));
	}
	 // metodos "seters"
	public void setRadio(Double radio){
		this.radio=radio;
	}
	// metodo "geters", devolver el valor del producto privado
	public Double getRadio(){
		return radio;
	}


}