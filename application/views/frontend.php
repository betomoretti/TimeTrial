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
    <div style='height:20px;'></div>  

    <h2>Todos los Productos</h2>
    <table>
    <tr>
        <th>Nombre</th>
        <th>Descripcion</th>
        <th></th>

    </tr>
    <?php foreach($lista as $fila) : ?>
    <tr>
        <td ><?php echo $fila->name; ?></td>
        <td ><?php echo $fila->description; ?></td>
        <td ><img src="/assets/uploads/files/<?php echo $fila->file_picture_url; ?>"></td>
    </tr>
     
    <?php
    endforeach;
    ?>
    </table>
    <div class="paginacion">
    <?php echo $paginacion ?>
    </div>
</body>
</html>