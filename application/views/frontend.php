<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link type="text/css" rel="stylesheet" href="/assets/css/foundation.css" />
    <script src="/assets/js/vendor/custom.modernizr.js"></script>     
</head>
<body>
    <?php  include('navbar.php'); ?>
 <div class="container">
  <div class="row">
            <div class="12 columns">
                <div class="row">
                    <div class="4 centered columns">
    <h2>Todos los Productos</h2>

    <ul class="small-block-grid-2 large-block-grid-4">
        <?php foreach($lista as $fila) : ?>
          <li> <?php 
                    $url = "product/".$fila->id;
                    echo anchor($url, $fila->name, 'title="Producto"'); 
                ?> </br>
              <?php echo $fila->description; ?></br>
              Precio: <?php echo $fila->price; ?>
              Precio USD: <?php echo $fila->price_usd; ?>
              Stock: <?php echo $fila->stock; ?></br>
              <a class="th radius" >
              <img src="/assets/uploads/files/<?php echo $fila->file_picture_url; ?>">
              </a>
            <?php endforeach; ?>
            </ul>
              <div class="right">
                <?php echo $paginacion ?>
              </div>
            </div>
          </div>
        </div>
    </div>
  </div>
</body>
</html>