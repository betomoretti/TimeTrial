<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link type="text/css" rel="stylesheet" href="/assets/css/foundation.css" />

<script src="/assets/js/vendor/custom.modernizr.js"></script>


     
</head>
<body>
<!-- Beginning navbar -->
    <?php  include('navbar.php'); ?>
<!-- End of navbar-->

	 <div class="large-6 columns">
      <div class="panel">
        <h5><?php  echo $product->name; ?></h5>
        
		  <?php echo $product->description; ?></br> 
		  Precio: <?php echo $product->price; ?>
          Precio USD: <?php echo $product->price_usd; ?>
          Stock: <?php echo $product->stock; ?></br>
          <img src="/assets/uploads/files/<?php echo $product->file_picture_url; ?>">
    	
      </div>
    </div>
</body>
</html>