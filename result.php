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
  <title>Post Job page</title>
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
    width: 380px;
    height: 480px;
    position: relative;
    margin: 8% auto;
    background: #fff;
    padding: 8px;
  }

  .input-group{
    top: 83px;
    position: absolute;
    width: 280px;

  }

  .input-field{
    width: 100%;
    padding: 2px 0;
    margin: 3px 0;
    margin-left: 37px;
  }

  .submit-btn{
    width: 35%;
    padding: 8px 25px;
    cursor: pointer;
    display: inline;
    margin: 3px;
    background: linear-gradient(to right,#d1ecf9,#abd0fa);
    border: 0;
    outline: none;
    border-radius: 30px;

  }
</style>

</head>
<body>

  <nav class="navbar navbar-inverse" style="background-color: rgba(0,0,0,0.7);">
    <div class="container-fluid">
      <div class="row"> 
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
            <li class="active"><a href="home.php" >HOME</a></li>
            <li><a href="register.html">NEWS</a></li>
            <li><a href="#">CONTACT US</a></li>
            <li><a href="#">ABOUT US</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="signup.php"><span class="glyphicon glyphicon-user"></span> Sign up</a></li>
            <li><a href="login1.php"><span class="glyphicon glyphicon-lock"></span> Login</a></li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
  
  <div class="container">

    <div class="row">

     <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"></div>

     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
       <div class="form-box">
        <div class="button-box">
          <div id="btn"></div>
          <center> <button type="button" class="toggle-btn" >RESULT FORM</button></center>
        </div>

        <form id="part" class="input-group" method="POST" action="postcode.php">

          <input type="text" name="cname" class="input-field" placeholder="Enter Company Name" required>
          <input type="text" name="jname" class="input-field" placeholder="Enter Job Name" required>
           <input type="text" name="name" class="input-field" placeholder="Enter   Applicant Name" required>
          <input type="text" name="res" class="input-field" placeholder="Enter result" required>
         
          <center> <input type="submit" name="result" value="RESULT" class="submit-btn"> <input type="reset" name="rej" value="CLEAR" class="submit-btn"> </center>
        </form>
      </div>
    </div>

    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"></div>
  </div>
</div>
<div class="container-fluid">
  <div class="row">
    <footer class="container-fluid text-center">
      <p>Copyright@Famina</p>
    </footer>

  </div>
</div>



</body>

</html>
