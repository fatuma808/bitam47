
<!DOCTYPE html>
<html lang="en">
<head>
  <title>send_job page</title>
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
  height: 450px;
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
  padding: 4px 0;
  margin: 5px 0;
  margin-left: 17px;
}

.submit-btn{
  width: 35%;
  padding: 12px 30px;
  cursor: pointer;
  display: inline;
  margin: 11px;
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
         <center> <button type="button" class="toggle-btn" >SEND JOB</button></center>
        </div>

        <form id="part" class="input-group" method="POST" action="addseekercode.php">
          <input type="text" name="num" class="input-field" placeholder="Enter Campany Number" required>
           <input type="text" name="name" class="input-field" placeholder="Enter Campany Name" required>
            <input type="text" name="jobnum" class="input-field" placeholder="Enter Job Number" required>
            <input type="text" name="jobname" class="input-field" placeholder="Enter Job Name" required>
            <input type="text" name="sal" class="input-field" placeholder="Enter Job Salary" required>
            <input type="text" name="skill" class="input-field" placeholder="Enter Job Skills" required>
             <textarea class="input-field" placeholder="Enter Your Qualifications" rows="1px";></textarea>
              <select>
                  <option class="input-field" style="margin-left: 17px;">Choose Job Category</option>
                   <option>INFORMATION TECHNOLOGY</option>
                    <option>ACCOUNTING</option>
                    <option>HUMAN RESOURCE</option>
                    <option>ENGINEER</option>
                    <option>TOURISM</option>
              </select>

          <center> <button type="submit" class="submit-btn">Send</button> <button type="reject" class="submit-btn">Clear</button> </center>
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
