<?php 
include 'connection.php';
session_start();
if (!isset($_SESSION['user'])) {
  header("location:home.php");
}
 ?>
<?php 

include("menus/menu_seeker.php");
  ?>
  
  <div class="container">
   <div style="width: 100%; height: 480px; background-image: url('images/pic2.jpeg'); background-size: 100% 100%; ">
      
    </div>

   <div class="contact-formNews">
        <fieldset>
      <legend style="color: white;">Hello Dear Job Sekeer</legend>

      <div>
    
<p style="color: blue;">  <?php echo '<h4 style="color: white;"> Welcome to the System dear Job Sekeer: ' .$_SESSION["user"].'</h4>';  ?> </p></div>
     </fieldset>
      </div>
      </div>
    
 <?php
include("menus/footer.php");
  ?>

</body>

</html>
