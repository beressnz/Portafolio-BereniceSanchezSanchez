<?php
 require_once("Conexion.php");
 class ClaseEjercicio extends Conexion{
	public function __construct() 
        {
            parent::__construct();
      
        }
	public function CantidadEjercicios(){
		   $result = $this->db->query(" SELECT count(IdMultiplicacion) as cantidad from multiplicacion;");
           $usuarios = $result->fetch_all(MYSQLI_ASSOC);
           foreach ($usuarios as $row){
				$valor=$row['cantidad'];
           }
            return $valor;
	}
	public function ConsultaEjercicio($valor){
		   $result = $this->db->query(" SELECT * from multiplicacion where IdMultiplicacion='$valor';");
       
           $usuarios = $result->fetch_all(MYSQLI_ASSOC);
            return $usuarios;
	}
  public function respuesta($valor, $ejercicio){
    $result = $this->db->query(" SELECT * from multiplicacion where Respuesta='$valor' and IdMultiplicacion='$ejercicio';");
    echo "SELECT * from multiplicacion where Respuesta='$valor';";
        $usuarios = $result->fetch_all(MYSQLI_ASSOC);
        if($usuarios){
          return true;
        }else{
           return false;
        }
      
  }

}
?>