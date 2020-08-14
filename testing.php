
<!--li a{
	display: inline;
	color: white;
	text-align: center;
	padding: 13px 15px;
	text-decoration: none; 
}

li a:hover:not(.first){
	background-color: #111;
}

li{
	float: left;
}

ul{
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: red;

}

<div class="contact-form">
								<img src="images/person.jpg">

								<h1>Login Form</h1>
								<form>
									<p>UserName</p>
									<input type="text" name="user" placeholder="Enter Your UserName" require>
									<p>Password</p>	
									<input type="Password" name="pass" placeholder="Enter Your Password" required>
									<input type="submit" value="sign In">

								</form>
							</div>	


<div class="news">
				<p style="color: black;">NEWS</p>
				<p style="color: black;">
					<p><a href=#itdv.html">IT SOFTWARE DEVELOPER</a></p>
					<p><a href=#itdv.html">BIO-CHEM TEACHERS</a></p>
					<p><a href=#itdv.html">BIO-CHEM TEACHERS</a></p>
					<p><a href=#itdv.html">PHYS-CHEM TEACHERS</a></p>

				</p>
		</div>

		<div class="dlt">
				<p style="color: blue;">DETAILS FOR OUR WEBSITE</p>
				 <p style="color: black;"> Wellcome to our website.<br>This website help all<br> whose seeks a job in different companies </p>
				<p style="color: black;">Wellcome to our website.<br>This website help all<br> whose seeks a job in different companies </p>
				
		</div>			


<div>
	<input type="text" name="fname" placeholder="Amina Suleiman Tamali" style="border: none; border-bottom: 1px solid violet; background: transparent; outline: none; height: 8px; color: #fff; font-size: 10px;">

					<input type="text" name="fname" placeholder="Female" style="border: none; border-bottom: 1px solid violet; background: transparent; outline: none; height: 15px; color: #fff; font-size: 8px;">

					<p style="margin: 0; padding: 0; font-weight: bold; color: white;">Address</p><input type="text" name="fname" placeholder="Melinne" style="border: none; border-bottom: 1px solid violet; background: transparent; outline: none; height: 35px; color: #fff; font-size: 15px;">

					<p style="margin: 0; padding: 0; font-weight: bold; color: white;">Phone Number</p><input type="text" name="fname" placeholder="+255 656 676 667" style="border: none; border-bottom: 1px solid violet; background: transparent; outline: none; height: 35px; color: #fff; font-size: 15px;">

					<p style="margin: 0; padding: 0; font-weight: bold; color: white;">Email</p><input type="text" name="fname" placeholder="amytamali.13@gmail.com" style="border: none; border-bottom: 1px solid violet; background: transparent; outline: none; height: 35px; color: #fff; font-size: 15px;">

					<p style="margin: 0; padding: 0; font-weight: bold; color: white;">DOB</p><input type="text" name="fname" placeholder="13th Aug, 1996" style="border: none; border-bottom: 1px solid violet; background: transparent; outline: none; height: 35px; color: #fff; font-size: 15px;">
</div>-->

echo("</td><td>");
    echo('<a href="sekedit.php?SeekerID='.$row['SeekerID'].'"> <i class="fa fa-pencil"></i></a> / ');
    echo('<a href="sekdelete.php?SeekerID='.$row['SeekerID'].'"><i class="fa fa-trash-o"></i></a>');
    echo("</td></tr>\n");


<!-- <nav class="navbar navbar-inverse" style="background-color: rgba(0,0,0,0.7);margin-bottom: 0px;">
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
          <li><a href="viewapp.php">VIEW APPLICANTS</a></li>
          <li><a href="viewseeker.php">VIEW APPLICATION</a></li>
          
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="logout.php"><span class="glyphicon glyphicon-user"></span> LOGOUT</a></li>
 -->

<!-- <!DOCTYPE html>
<html lang="en">
<head>
  <title>Test page</title>
  <meta charset="utf-8">
 
  <link rel="stylesheet" href="css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="css/css.css">
     <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
     <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style1.css">

</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">JOB PORTAL SYSTEM</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li>
        <li><a href="#">Page 4</a></li>
        <li><a href="#">Page 5</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-lock"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container" >
	<img src="images/job1a.jpg" >
  
</div>
<div class="container-fluid">
	<div class="row">
		<footer class="container-fluid text-center">
  <p>Copyright@Famina</p>
</footer>

	</div>
</div>


<script>
  
  var x = document.getElementById("part");
   var y = document.getElementById("comp");
    var z = document.getElementById("btn");

    function comp(){
      x.style.left = "-400px";
      y.style.left = "50px";
      z.style.left = "110px";

    }

    function part(){
      x.style.left = "50px";
      y.style.left = "450px";
      z.style.left = "0";

    }
</script>



<code>
	<h1>Table Code</h1>
	  <?php
            while($row = $q2->fetch_assoc()) {
              ?>
          <tr>
          <td><?=$sn++?></td>
            <td><?= $row['compID']; ?></td>
            <td><?= $row['compName']; ?></td>
            <td><?= $row['compAddress']; ?></td>
            <td><?= $row['Email']; ?></td>
            <td><?= $row['contactNo']; ?></td>
            <td><?= $row['username']; ?></td>
            <td><?= $row['Role']; ?></td>
            <td><?= $row['Status']; ?></td>
            <td class="text-center" style="width: 30px"><a href="CompUpdate.php?id=<?= $row['compID'] ?>"><i class="fa fa-pencil"></i></a></td>
              <td class="text-center" style="width: 30px"><a href="del_CompHandler.php?delete=<?= $row['compID'] ?>"><i class="fa fa-trash-o"></i></a></td>
          </tr>
            <?php } ?>
</code>


</body>

</html> -->
