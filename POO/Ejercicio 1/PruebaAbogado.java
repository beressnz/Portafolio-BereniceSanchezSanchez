public class PruebaAbogado{
	public static void main (String[] args){
		Abogado abogado1; // se define el objeto

		abogado1 = new Abogado(); // se crea el objeto
		abogado1.nombre = "LUIS";
		abogado1.cedula_profesional = "234";
		abogado1.especialidad = "JUDICIAL";
		abogado1.telefono = "123456";
		abogado1.horario = "10:32";
		abogado1.direccion = "FRANCISCO I. MADERO";
		System.out.println("DATOS DEL ABOGADO 1");
		System.out.println("Nombre            :" +abogado1.nombre);
		System.out.println("Cedula Profesiona :" +abogado1.cedula_profesional);
		System.out.println("Especialidad      :" +abogado1.especialidad);
		System.out.println("Telefono          :" +abogado1.telefono);
		System.out.println("Horario           :" +abogado1.horario);
		System.out.println("Direccion         :" +abogado1.direccion);
		Abogado abogado2 = new Abogado("CARLOS", "PENALISTA");// Se define y se crea
		System.out.println("Nombre            :" +abogado2.nombre);
		System.out.println("Especialidad      :" +abogado2.especialidad);
	}

}