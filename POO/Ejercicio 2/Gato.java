public class Gato{
      //definicion de atributos
      public String nombre, color;
      private Double peso;// se oculta de las demas clases ya no se puede ver hasta que se establezcan permisos

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

      // metodos "seters"
      public void setPeso(Double peso){//public| void| metodo| valor del atributo privado 
        this.peso=peso;
      }
      // metodo "geters" recuperar, devolver el valor del producto privado
      public Double getPeso(){// no se necesita parametros porque solo quiero que me devuelva el valor de peso. (regresa)
        return peso;
      }

      public void dormir(){
	     System.out.println("El gato "+nombre+" está durmiendo");
      }//end dormir

      public void comer(String comida){
      	     System.out.println("El gato "+nombre+" esta comiendo "+ comida);
      }//end comer                                                              
}//end clase