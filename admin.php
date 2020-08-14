<?php 
include 'connection.php';
session_start();
if (!isset($_SESSION['user'])) {
  header("location:home.php");
}
 ?>
<?php 
include("menus/menu_admin.php");
 ?>
  
  <div class="container">
     <div style="width: 100%; height: 480px; background-image: url('images/sss.jpg'); background-size: 100% 100%; ">
      
    </div>
   <div class="contact-formNews">
        <fieldset>
      <legend style="color: white;">Hello Dear Admin</legend>

      <div><p><?php echo '<h4 style="color: white;"> Welcome to the System dear Admin: ' .$_SESSION["user"].'</h4>';  ?>  </p>
     </fieldset>
      </div>
      </div>
    
 <?php 
include("menus/footer.php");
 ?>

</body>

</html>
