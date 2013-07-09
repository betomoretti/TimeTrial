 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link type="text/css" rel="stylesheet" href="/assets/css/foundation.min.css" />

<script src="/assets/js/vendor/custom.modernizr.js"></script>
<script src="/assets/js/foundation/foundation.topbar.js"></script>


     
<?php 

foreach($css_files as $file): ?>
    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
 
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
 
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
 
<style type='text/css'>
body
{
    font-family: Arial;
    font-size: 14px;
}
a {
    color: blue;
    text-decoration: none;
    font-size: 14px;
}
a:hover
{
    text-decoration: underline;
}
</style>
</head>
<body>
<!-- Beginning navbar -->
    <?php  include('navbar.php'); ?>
    <h3> <?php echo "Bienvenido ".$this->session->userdata('username'); ?> </h1>
<!-- End of navbar-->
    <div style='height:20px;'></div>  
    <div>
        <?php echo $output; ?>
 
    </div>
<!-- Beginning footer -->
<div></div>
<!-- End of Footer -->

<script>
  document.write('<script src=/js/vendor/'
    + ('__proto__' in {} ? 'zepto' : 'jquery')
    + '.js><\/script>');
</script>
<script>
  $(document).foundation();
</script>   
</body>
</html>