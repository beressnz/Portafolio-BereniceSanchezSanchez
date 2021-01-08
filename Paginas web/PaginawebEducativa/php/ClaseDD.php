<?php
 require_once("Conexion.php");
 class ClaseEjercicio extends Conexion{
  public function __construct() 
        {
            parent::__construct();
      
        }
  public function CantidadEjercicios(){
       $result = $this->db->query(" SELECT count(IdDivision) as cantidad from division;");
           $usuarios = $result->fetch_all(MYSQLI_ASSOC);
           foreach ($usuarios as $row){
        $valor=$row['cantidad'];
           }
            return $valor;
  }
  public function ConsultaEjercicio($valor){
       $result = $this->db->query(" SELECT * from division where IdDivision='$valor';");
       
           $usuarios = $result->fetch_all(MYSQLI_ASSOC);
            return $usuarios;
  }
  public function respuesta($valor, $ejercicio){
    $result = $this->db->query(" SELECT * from division where Respuesta='$valor' and IdDivision='$ejercicio';");
    echo "SELECT * from division where Respuesta='$valor';";
        $usuarios = $result->fetch_all(MYSQLI_ASSOC);
        if($usuarios){
          return true;
        }else{
           return false;
        }
      
  }

}
?>