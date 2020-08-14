<?php
include("menus/lg.php");
?>

<div class="container">

  <div class="row">
    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">

    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
     <div class="form-box">
      <div class="button-box">
        <div id="btn"></div>
        <center> <button type="button" class="toggle-btn" >LOGIN FORM</button></center>
      </div>

      <form id="part" class="input-group" action="logcode.php" method="POST">
        <input type="text" name="user" class="input-field" placeholder="Enter Your Username" required>
        <input type="Password" name="pass" class="input-field" placeholder="Enter Your Password" required>

        <?php 
        if(isset($_GET["error"])){
          echo $_GET["Wrong Password or Username"];
        }
        ?>
        <center> <input type="submit" name="send" class="submit-btn" value="LOGIN"></center>
      </form>
    </div>
  </div>

  <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">

  </div>
</div>
</div>
<?php
include("menus/footer.php");
?>



</body>

</html>
