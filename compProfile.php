<?php 
include 'connection.php';
session_start();
if (!isset($_SESSION['user'])) {
  header("location:home.php");
}
 ?>
<?php 
include("menus/menu_company.php");
  ?>
<!-- <!DOCTYPE html>
<html lang="en">
<head>
  <title>Company Profile</title>
  <meta charset="utf-8">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/css.css">
  <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/popper.min.js"></script>
  <link rel="stylesheet" type="text/css" href="style1.css">

  <style>
    .contact-formNews{
  position: absolute;
  top:45%;
  left: 80%;
  -webkit-transform:translate(-50%,-50%);
  -moz-transform:translate(-50%,-50%);
  -ms-transform:translate(-50%,-50%);
  -o-transform:translate(-50%,-50%);
  transform: translate(-50%,-50%);
  width: 32%;
  height: 65%;
  padding: 80px 40px;
  background:rgba(0,0,0,0.3);
}
  </style>

</head>
<body>

  <nav class="navbar navbar-inverse" style="background-color: rgba(0,0,0,0.7);margin-bottom: 0px;">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
        </button>
        <a class="navbar-brand" href="#">JOB PORTAL SYSTEM</a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar" >
        <ul class="nav navbar-nav">
          <li class="active"><a href="compProfile.php" >HOME</a></li>
          <li><a href="post.php">POST JOB</a></li>
          <li><a href="viewseeker.php">VIEW APPLICANTS</a></li>
          <li><a href="viewapp.php">VIEW APPLICATION</a></li>
          
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="logout.php"><span class="glyphicon glyphicon-user"></span> LOGOUT</a></li>
          
        </ul>
      </div>
    </div>
  </nav> -->
  
  <div class="container">
   <div style="width: 100%; height: 480px; background-image: url('images/pic3.jpeg'); background-size: 100% 100%; ">
      
    </div>
   <div class="contact-formNews">
        <fieldset>
      <legend style="color: white;">Hello Dear Job Company</legend>

      <div>
    
<p>  <?php echo '<h4 style="color: white;"> Welcome to the System dear Company: ' .$_SESSION["user"].'</h4>';  ?> </p></div>
     </fieldset>
      </div>
      </div>
    
 <?php

include("menus/footer.php");
  ?>


</body>

</html>
