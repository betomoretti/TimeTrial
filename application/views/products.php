 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link type="text/css" rel="stylesheet" href="/assets/css/foundation.css" />
    <script src="/assets/js/vendor/custom.modernizr.js"></script>
<?php 

foreach($css_files as $file): ?>
    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
 
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
 
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
 
<style type='text/css'>

</style>
</head>
<body>
<!-- Beginning navbar -->
    <?php  include('navbar.php'); ?>
    <h3> <?php echo "Bienvenido ".$this->session->userdata('username'); ?> </h1>
<!-- End of navbar-->
    <div>
        <?php echo $output; ?>
 
    </div>  
</body>
</html>