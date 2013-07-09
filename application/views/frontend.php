<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link type="text/css" rel="stylesheet" href="/assets/css/foundation.min.css" />

<script src="/assets/js/vendor/custom.modernizr.js"></script>
<script src="/assets/js/foundation/foundation.topbar.js"></script>


     
</head>
<body>
<!-- Beginning navbar -->
    <?php  include('navbar.php'); ?>
<!-- End of navbar-->
 
    <h2>Todos los Productos</h2>

    <ul class="small-block-grid-2 large-block-grid-4">
        <?php foreach($lista as $fila) : ?>
          <li><a href=<?php echo site_url(array('main','product',$file->id)); ?>> <?php echo $fila->name; ?> </a></br>
              <?php echo $fila->description; ?></br>
              Precio: <?php echo $fila->price; ?>
              Precio USD: <?php echo $fila->price_usd; ?>
              Stock: <?php echo $fila->stock; ?></br>
              <img src="/assets/uploads/files/<?php echo $fila->file_picture_url; ?>"></li>
        <?php endforeach; ?>
    </ul>
    <div class="paginacion">
        <?php echo $paginacion ?>
    </div>
</body>
</html>