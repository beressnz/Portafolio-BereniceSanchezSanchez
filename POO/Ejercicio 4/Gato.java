public class Gato{
      //definicion de atributos
      public String nombre, color;
      public Double peso;

      //definicion de constructores
      public Gato(){
            nombre = "";
            color = "";
            peso = 0.0;
      }//constructor vacío

      public Gato(String nombre, String col){
        this.nombre = nombre;
        color = col;
        peso = 1.0;
      }//constructor

      public Gato(String color, Double peso){
	     this.color = color;
             this.peso = peso;
      }//constructor

      public void dormir(){
	     System.out.println("El gato "+nombre+" está durmiendo");
      }//end dormir

      public void comer(String comida){
      	     System.out.println("El gato "+nombre+" esta comiendo "+ comida);
      }//end comer                                                              
}//end clase