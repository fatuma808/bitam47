<?php
  include("connection.php");
  if(!isset($_GET["compID"])){
  header("location:viewcompanyA.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Update page</title>
  <meta charset="utf-8">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/css.css">
  <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/popper.min.js"></script>
  <link rel="stylesheet" type="text/css" href="forms.css">

  

</head>
<body>

  <!-- <nav class="navbar navbar-inverse" style="background-color: rgba(0,0,0,0.7);">
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
          <li><a href="#">NEWS</a></li>
          <li><a href="#">CONTACT US</a></li>
          <li><a href="#">ABOUT US</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="signup.php"><span class="glyphicon glyphicon-user"></span> Sign up</a></li>
          <li><a href="Signin.php"><span class="glyphicon glyphicon-lock"></span> Login</a></li>
        </ul>
      </div>
      </div>
    </div>
  </nav> -->
  
  <div class="container">

<div class="row">
	 <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">

    </div>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
           <div class="form-box">
        <div class="button-box">
          <div id="btn"></div>
         <center> <button type="button" class="toggle-btn" >Participants</button></center>
        </div>


<?php
 $sql="SELECT compNumb,compName,Address,Email,ContNo,Username,File,compID FROM company WHERE compID=:id";
  $stmt = $conn->prepare($sql);
  $stmt->execute(array('id'=>$_GET["compID"]));
  $ft = $stmt->fetch(PDO::FETCH_ASSOC);

?>
       
      <form id="comp" class="input-group" method="POST" action="#">
           <input type="text" name="num" class="input-field" placeholder="Enter Your Campany Number" required   value="<?php echo $ft['compNumb']; ?>">
          <input type="text" name="name" class="input-field" placeholder="Enter Your Campany Name" required   value="<?php echo $ft['compName']; ?>">
          <input type="text" name="add" class="input-field" placeholder="Enter Your Address" required   value="<?php echo $ft['Address']; ?>">
          <input type="email" name="email" class="input-field" placeholder="Enter Your Email" required  value="<?php echo $ft['Email']; ?>">
          <input type="number" name="numb" class="input-field" placeholder="Enter Your PhoneNumber" required  value="<?php echo $ft['ContNo']; ?>">
          <input type="text" name="user" class="input-field" placeholder="Enter Your Username" required   value="<?php echo $ft['Username']; ?>">
          <input type="file" name="fl" class="input-field" placeholder="Enter Requirement" required   value="<?php echo $ft['File']; ?>">
           <center> <input type="submit" name="update" value="UPDATE" class="submit-btn"> <input type="reset" name="dorej" value="CLEAR" class="submit-btn"> </center>
        </form>

<?php 
include("connection.php");

if(isset($_POST['update'])){

  $comp=$_POST['num'];
  $name=$_POST['name'];
  $add=$_POST['add'];
  $email=$_POST['email'];
  $phone=$_POST['numb'];
  $user=$_POST['user'];
  $file=$_POST['fl'];

  $sql="UPDATE company SET compNumb=:num,compName=:name,Address=:add,Email=:email,ContNo=:numb,Username=:user,File=:fl WHERE compID= :id";
  $pre = $conn->prepare($sql);
  $pre->execute(array(':num'=>$comp,':name'=>$name,':add'=>$add,':email'=>$email,':numb'=>$phone,':user'=>$user,':fl'=>$file,":id"=>$_GET['compID']));

  header("location:viewcompanyA.php");
}

?>

      </div>
    </div>

    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">

    </div>
  </div>
  </div>
<!-- <div class="container-fluid">
  <div class="row">
    <footer class="container-fluid text-center">
  <p>Copyright@Famina</p>
</footer>

  </div>
</div> -->
  


</body>

</html>
