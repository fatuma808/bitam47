
<?php include("menus/menu_includ.php")  ?>

<?php 
include 'connection.php';
session_start();
if (!isset($_SESSION['user'])) {
  header("location:home.php");
}
 ?>
  
  <div class="container">
    <div style="width: 40%; height: 480px; background-image: url('images/job1a.jpg'); background-size: 100% 100%; ">
      
    </div>
 
  <div class="contact-formNews" style="height: 65%" style="margin-bottom: 0%;">
    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6" >
        <center>
        <p style="margin-bottom: 0%">CONTACT FORM</p>
        </center>
      	<form style="height: 6%;">

    <label for="fname">First Name</label><br>
    <input type="text" id="fname" name="firstname" placeholder="Your name.."><br>

    <label for="lname">Last Name</label><br>
    <input type="text" id="lname" name="lastname" placeholder="Your last name.."><br>

    <label for="country">Country</label><br>
    <select id="country" name="country">
    	      <option value="tz">TANZANIA</option>
      <option value="australia">Australia</option>
      <option value="canada">Canada</option>
      <option value="usa">USA</option>

    </select><br>
<label for="Subject">SUBJECT:</label>
      <textarea class="form-control" rows="5" id="subject" placeholder="Write something.."></textarea>
    <input type="submit" value="Submit">
  </form>
</div>
</div>
</div>
</div>
</div>
 
<?php include("menus/footer.php")  ?>





</body>
</html>