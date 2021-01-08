<?php require_once("php/ClaseDM.php");
$objecto=new ClaseEjercicio();
@$intentos=$_GET['intentos'];
$intentos+=1;
$intentos-=1;
$bien=0;
$malo=0;

$proceso='';
@$cantidad=$objecto->CantidadEjercicios();
$ejercicio=mt_rand(0 ,$cantidad);
if($ejercicio==0){
	$ejercicio++;
}

 	if(isset($_POST['comenzar'])){
 		
 		header('Location: CarpetaDecimalesM.php?visible=2&saludo='.$ejercicio, true);
 	}else{
 		$ventana='none';
 		$boton='block';
 	}

 	if(isset($_GET['visible'])){
 		$ventana='block';
 		$boton='none';
 	}


 if(isset($_GET['saludo'])){
 
 	$proceso=$objecto->ConsultaEjercicio($_GET['saludo']);
 }else {
 	
 	$proceso=$objecto->ConsultaEjercicio($ejercicio);
 } 
 //echo @$_GET['saludo'];
 if(isset($_POST['mandar'])){
 	$intentos++;
 	@$aciertos=$_GET['aciertos'];
	@$aciertos+=1;
	@$aciertos-=1;
	if($_GET['intentos']<=1 ){

		if($objecto->respuesta($_POST['respuesta'],$_GET['saludo'])){
			//@$bien=1;
			//@$bien=1;
					$aciertos+=1;
					header('Location: CarpetaDecimalesM.php?saludo='.$ejercicio.'&estado=1'."&intentos=".$intentos."&visible=2"."&aciertos=".$aciertos, true);

		}else{
			//@$malo=1;
				 header('Location: CarpetaDecimalesM.php?saludo='.$ejercicio.'&estado=2'."&intentos=".$intentos."&visible=2"."&aciertos=".$aciertos, true);			
		}
    }else{
    	if($_GET['intentos']==2 ){
    		if($objecto->respuesta($_POST['respuesta'],$_GET['saludo'])){
			//@$bien=1;
			//@$bien=1;
			$aciertos+=1;
			
			header('Location: CarpetaDecimalesM.php?saludo='.$_GET['saludo'].'&estado=1'."&intentos=".$intentos."&visible=2"."&aciertos=".$aciertos."&bandera=true", true);

		}else{
			//@$malo=1;
				
				 header('Location: CarpetaDecimalesM.php?saludo='.$_GET['saludo'].'&estado=2'."&intentos=".$intentos."&visible=2"."&aciertos=".$aciertos."&bandera=true", true);	
		}
    	}
    }
 }

?>
<html lang="es">
	<head>
		<title>Carpeta Software</title>
		<meta http-equiv="Content-Type content="text/html; charset= "iso-8859-1">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

		<link rel="stylesheet" href="CSS/decimalesMD_style.css">
	</head>
	<body>
		<?php
	if(@$_GET['bandera']){
		
  	?> 

   <script type="text/javascript">
       	$(document).ready(function(){
             $("#correcto").modal("show");
        });

    </script>
<?php
   }
?>

		<script type="text/javascript">
  	function typeEffect(element, speed) {
	var text = element.innerHTML;
	element.innerHTML = "";
	
	var i = 0;
	var timer = setInterval(function() {
    if (i < text.length) {
      element.append(text.charAt(i));
      i++;
    } else {
      clearInterval(timer);
    }
  }, speed);
}


// application
var speed = 75;
var h1 = document.querySelector('h1');
var p = document.querySelector('p');
var delay = h1.innerHTML.length * speed + speed;

// type affect to header



// type affect to body
setTimeout(function(){
  p.style.display = "inline-block";
  typeEffect(p, speed);
}, delay);

  </script>

		<div id= "general" >
			<a style="text-decoration: none;" href= "VideoDM.htm">Introducción</a>


			<a style="text-decoration: none;"  class="ejercicios"href= "CarpetaDecimalesM.php">Ejercicios</a>
			<div style="margin: 0 auto; width: 1000;  display:<?php echo @$boton;?>;">
				<form method="POST">
					<br><br>
					<br>
					<h2 style="text-align: center; color: #0492c2;"  >Aprende con Itzamatics ....</h2>
					<a  style="left: 38%; top:116px; background-size: 100% 100%; width: 240px; height: 200px; background-color: white; outline: none; border: none; background-image: url('Imagenes/DecimalesImg/Submenu.png'); background-repeat: no-repeat;" > </a>
					<input type="submit" name="comenzar" value=" " class="ejer" title="comenzar">
					<br> <br><br> <br><br> <br><br> <br><br> <br><br>
					<h4 style="text-align: center; color: #0492c2;"  >Comenzar</h4>


				</form>
				<a title="Menú de Inicio" style="left: 1%; top:10px; background-size: 100% 100%; width: 136px; height: 130px; background-color: white; outline: none; border: none; background-image: url('Imagenes/DecimalesImg/logoo.png'); background-repeat: no-repeat;" href="index.htm"> </a>
			</div>
			<form method="post">
			<br>
			
			<table style="margin: 0 auto; width: 900;  display:<?php echo @$ventana;?>;">

	<?php 
		foreach ($proceso as $row){
				echo "<tr><td align='justify'>".$row['Problema']."</td></tr>";
				echo"<tr height='40'></tr>";
				echo "<td align='center'><img src='".@$row['Img']."' width='680' height='210'></td>";
				echo"<tr height='10'></tr>";

				
           }
	?>
	<tr><td>
		<p style="font-size: 13px">Elige la opción correcta :</p>
	<select  name="respuesta" required="">
		
		<option > 
			<br>
		</option>
		<?php foreach ($proceso as $row):?>
		<option   <?php echo "value='".$row['R1']."'";?>>
			<?php echo $row['R1'];?>
		</option>
		<option   <?php echo "value='".$row['R2']."'";?>>
			<?php echo $row['R2'];?>
		</option>
		<option   <?php echo "value='".$row['R3']."'";?>>
			<?php echo $row['R3'];?>
		</option>
			<?php endforeach ?>

	</select>

	</td></tr>	
	<tr height='5'><td>
		<center> 

			<button title="Siguiente" type="submit" name="mandar"  value="" class="text botonimag"></button>
			</center>
	
	</td></tr>
	
	<tr>
		<td>
			<a  title="Submenú" style="left: 80%; top:350px; background-size: 100% 100%; width: 200px; height: 180px; background-color: white; outline: none; border: none; background-image: url('Imagenes/DecimalesImg/Submenu.png'); background-repeat: no-repeat;" href="MenuDecimales.htm"> </a>
				
				
		</td>
	</tr>
	<tr >
			<td>
				<h3 style=" position:absolute;left: 3%;
        top:470;"><?php echo $intentos." / 3 ";?></h3>
			</td>
		</tr>

	</table>
</form>
			
			
			<a style="text-decoration: none;" class="juegos" href= "JuegoDM.htm">Juegos</a>
                        
		</div>
		<!-- Modal -->
<div class="modal fade" id="correcto">
    <div class="modal-dialog">
    	
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4  class="modal-title" style="text-align: center;">  Resultados </h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
       Incorrectos : <?php echo -($_GET['aciertos']-3);?><br>
        Correctos :  <?php echo $_GET['aciertos'];?>
         <picture>
         	<img  <?php  if($_GET['aciertos']==1){
				echo $imagen_aciertos="src='Imagenes/DecimalesImg/msj2.png'";
			}
			if($_GET['aciertos']==2){
				echo $imagen_aciertos="src='Imagenes/DecimalesImg/msj0.png'";
			}
			if($_GET['aciertos']==3){
				echo $imagen_aciertos="src='Imagenes/DecimalesImg/itzaa.gif'";
			}
			if($_GET['aciertos']==0){
				echo $imagen_aciertos="src='Imagenes/DecimalesImg/msj1.png'";
			}
			?> alt="" width="350" height="200" > 
         </picture>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
        	<form method="post" action="RDM.php">
       			   <button type="submit" style="padding: 3px 10px; border: PowderBlue 5px double;border-top-left-radius: 5px;
  border-bottom-right-radius: 5px; outline: none; background: #057ccf;" class="btn btn-danger opcion" href= "CarpetaDecimalesM.php" >Aceptar</button>
          </form>
        </div>
        
      </div>
    </div>
 </div>
 
	</body>
	<script type="text/javascript">
		var $btn = document.querySelector('.btn');

$btn.addEventListener('click', e => {
  window.requestAnimationFrame(() => {
    $btn.classList.remove('is-animating');
    
    window.requestAnimationFrame(() => {
      $btn.classList.add('is-animating');
    });
  });
});
		
	</script>
</html>