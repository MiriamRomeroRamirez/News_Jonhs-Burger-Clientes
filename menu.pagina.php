<?php
include("conexion.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <title>Menú</title>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <?php require_once("navbar.componente.php"); ?>
    <div class="container pt-5">
    <div class="row">
	    <div class="col-xs-12">
	    	<!-- PAGE CONTENT BEGINS -->
	    	<table class="table table-hover text-center">
	    		<thead>
	    			<tr>
	    				<th class="text-center"><h4><strong>Producto</strong></h4></th>
	    				<th class="text-center"><h4><strong>Precio</strong></h4></th>
	    				<th class="text-center"><h4><strong></strong></h4></th>
	    			</tr>
	    		</thead>
	    		<tbody>
	    				<?php
	    				$queryA = "SELECT * FROM menu;";
	    				$result = $conexion->query($queryA);
	    				while($row = $result->fetch_array(MYSQLI_BOTH)){ ?>
	    						<tr>
	    							<td><?= $row['descripcion'];   ?></td>
	    							<td>$<?= $row['precio'];   ?>.00</td>
	    							<td><a href="agregar.metodo.php?id=<?= $row['id_producto'];?>" id="boton" class="btn btn-primary btn-xs">Agregar<span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a>
	    						</td> 
	    						</tr> 
	    				<?php } ?>
	    		</tbody>
	    	</table>
	    	<!-- PAGE CONTENT ENDS -->
	    </div><!-- /.col -->
    </div>
</body>
</html>