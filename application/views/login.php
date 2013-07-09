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
    <div class="row">
        <div class="small-6 columns">
            <?php echo validation_errors(); ?>
            <?php echo form_open('autentication/login');?>
            <label>Usuario</label><br>
            <input type="text" id="username" name="username"><br><br>
            <label>Password</label><br>
            <input type="password" id="password" name="password">
            <br><br>
            <input type="submit" value="Enviar">
            <?php echo form_close();?>
        </div>
    </div>
<!-- Beginning footer -->
<div></div>
<!-- End of Footer -->
 
</body>
</html>