<?php
/**
 * Escriba un programa que cada vez que se ejecute muestre una tirada de dados entre 1 y 6,
 * al azar, y coloque la ficha en la posición correspondiente.
 *
 * La posición de la ficha cx depende del valor obtenido en el dado:
 * La posición se puede calcular a partir del valor del dado mediante la fórmula: $posicion = 100 * $dado - 50
 *
 * @author Escriba aquí su nombre
 *
 */
?>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>
    Avance de ficha.
    Variables. Sin formularios.
    Escriba aquí su nombre
  </title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css" title="Color">
</head>

<body>
  <h1>Avance de ficha</h1>
  <form action="formpost.php" method="post">
  numero: <input type="number" name="numero" min="1" max="6"><br>
  <input type="submit" value="enviar">
  </form>
  <img class="dado" src="<?php echo $imgsrc1; ?>">

  <p>Actualice la página para mostrar una nueva tirada.</p>

<?php
 $dado = $_POST['numero'];  
 echo $dado;
 


?>




  <footer>
    <p>Escriba aquí su nombre</p>
  </footer>
</body>
</html>
