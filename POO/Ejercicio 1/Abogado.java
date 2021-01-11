public class Abogado{
	//Definici? de atributos
	public String nombre, cedula_profesional, especialidad, telefono, horario, direccion;

	// Definicion de constructores
	public Abogado(){
		nombre = "";
		cedula_profesional = "";
		especialidad = "";
		telefono = "";
		horario = "00:00";
		direccion = "";
	}// Constructor vacio
	public Abogado(String nombre, String especialidad){
		this.nombre = nombre;
		this.especialidad = especialidad;
	}// Constructor
}