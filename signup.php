<?php 
  include("menus/sup.php")
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
  height: 430px;
  position: relative;
  margin: 6% auto;
  background: #fff;
  padding: 5px;
}
  </style>

  
 
</script> 
<!-- Password validation -->
<script> function validForm(){ 
  var pass = document.forms["formapp"]["pass"].value;   
      if (pass.length < 5){  
        document.getElementById('spn').innerHTML = "Your Password is too short!" 
  return false 
  }
} 
 
</script> 

</head>
<body>

 
  
  <div class="container">

<div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
           <div class="form-box">
        <div class="button-box">
          <div id="btn"></div>
         <center> <button type="button" class="toggle-btn" >Participants</button></center>
        </div>

        <form id="part" class="input-group" method="POST" action="addseekercode.php"  name="formapp" onsubmit="return validForm()">
          <input type="text" name="name" class="input-field" placeholder="Enter Your Full Name">
<!-- <br>
  <span id="spn"></span> -->

          <br>

          <input type="radio" name="sex"  value="Male" style="margin-left: 17px;">Male
          <input type="radio" name="sex" value="Female" style="margin-left: 17px;">Female

          <input type="date" name="dob" class="input-field" placeholder="Enter Your Date of Birth" required>
          <input type="text" name="add" class="input-field" placeholder="Enter Your Address" required>
          <input type="number" name="phone" class="input-field" placeholder="Enter Your PhoneNumber" required>
          <input type="text" name="email" class="input-field" placeholder="Enter Your Email" required>
          <input type="text" name="user" class="input-field" placeholder="Enter Your Username" required>
          <input type="Password" name="pass" class="input-field" placeholder="Enter Your Password" >
          <br>
  <span id="spn"></span><br>
          
          <center> <input type="submit" name="send" value="SUBMIT" class="submit-btn"> <input type="reset" name="rej" value="CLEAR" class="submit-btn"> </center>
        </form>
      </div>
    </div>

    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">

      <div class="form-box">
        <div class="button-box">
          <div id="btn"></div>
            <center> <button type="button" class="toggle-btn">Company</button></center>
        </div>

        <form id="comp" class="input-group" method="POST" action="compcode.php" >
           <input type="text" name="num" class="input-field" placeholder="Enter Your Campany Number" required/>
          <input type="text" name="name" class="input-field" placeholder="Enter Your Campany Name" required>
          <input type="text" name="add" class="input-field" placeholder="Enter Your Address" required>
          <input type="number" name="numb" class="input-field" placeholder="Enter Your PhoneNumber" required>
          <input type="email" name="email" class="input-field" placeholder="Enter Your Email" required>
          <input type="text" name="user" class="input-field" placeholder="Enter Your Username" required>
          <input type="Password" name="pass" class="input-field" placeholder="Enter Your Password" required>
          <input type="file" name="fl" class="input-field" placeholder="Enter Requirement" required>
           <center> <input type="submit" name="dosend" value="SUBMIT" class="submit-btn"> <input type="reset " name="dorej" value="CLEAR" class="submit-btn"> </center>
        </form>
      </div>
     
    </div>
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
