<?php
/**
 * Escriba un programa que cada vez que se ejecute muestre tres carta entre 1 y 10,
 * al azar, e indique el valor más alto.
 *
 * El valor más alto se puede obtener con la función max().
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
    La carta más alta.
    Variables. Sin formularios.
    Escriba aquí su nombre
  </title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style.css" title="Color">
</head>

<body>
  <h1>La carta más alta</h1>


  <p>Actualice la página para mostrar un nuevo trío de cartas.</p>


<?php
$carta1 = rand(1,10);
$carta2 = rand(1,10);
$carta3 = rand(1,10);

$cartaalta = max($carta1,$carta2,$carta3);

$imgsrc1 = "img/c".$carta1.".svg";
$imgsrc2 = "img/c".$carta2.".svg";
$imgsrc3 = "img/c".$carta3.".svg";
$imgsrcalta = "img/c".$cartaalta.".svg";






?>
<img class="carta" src="<?php echo $imgsrc1; ?>">
<img class="carta" src="<?php echo $imgsrc2; ?>">
<img class="carta" src="<?php echo $imgsrc3; ?>">

<p>La carta mas alta es <img class="carta" src="<?php echo $imgsrcalta; ?>"></p>

  <footer>
    <p>Kevin</p>
  </footer>
</body>
</html>
