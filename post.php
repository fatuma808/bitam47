<?php

include("menus/menu_company.php");
  ?>

  <?php 
include 'connection.php';
session_start();
if (!isset($_SESSION['user'])) {
  header("location:home.php");
}
 ?>

 <!DOCTYPE html>
<html lang="en">
<head>
  <title>Register page</title>
  <meta charset="utf-8">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/css.css">
  <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/popper.min.js"></script>
  <link rel="stylesheet" type="text/css" href="forms.css">

  <style>
    .form-box{
  width: 65%;
  height: 380px;
  position: relative;
  margin: 6% auto;
  background: #fff;
  padding: 5px;
}
  </style>


  


</head>
<body>

  
  <div class="container">

    <div class="row">

     <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"></div>

     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
       <div class="form-box">
        <div class="button-box">
          <div id="btn"></div>
          <center> <button type="button" class="toggle-btn" >POST JOB FORM</button></center>
        </div>

        <form id="part" class="input-group" method="POST" action="postcode.php">

          <input type="text" name="numb" class="input-field" placeholder="Enter Job Number" required>
          <input type="text" name="name" class="input-field" placeholder="Enter Job Name" required>
          <input type="number" name="sal" class="input-field" placeholder="Enter Job Salary" required>
          <textarea class="input-field" placeholder="Enter Job Skills" rows="0.8px" name="skill"></textarea>
          <input type="file" name="fl" class="input-field" placeholder="Enter Qualification" required>
          <select class="input-field" name="catt">
            <option>Choose Job Category</option>
            <option>INFORMATION TECHNOLOGY</option>
            <option>ACCOUNTING</option>
            <option>HUMAN RESOURCE</option>
            <option>ENGINEER</option>
            <option>TOURISM</option>
          </select>

          <center> <input type="submit" name="subm" value="POST" class="submit-btn"> <input type="reset" name="rej" value="CLEAR" class="submit-btn"> </center>
        </form>
      </div>
    </div>

    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"></div>
  </div>
</div>
<?php

include("menus/footer.php");
  ?>



</body>

</html>
