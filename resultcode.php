<?php
include("connection.php");

if(isset($_POST['send'])){

	$cname=$_POST['cname'];
	$jname=$_POST['jname'];
	$name=$_POST['name'];
	$result=$_POST['res'];
	
	// $sql="INSERT INTO job_seeker (Name,Gender,DOB,Address,PhoneNo,Email,Username,Password) VALUES(:name,:sex,:dob,:add,:phone,:email,:user,:pass)";
	// $pre = $conn->prepare($sql);
	// $pre->execute(array(':name'=>$name,':sex'=>$gender,':dob'=>$date,':add'=>$add,':phone'=>$phone,':email'=>$email,':user'=>$user,
	// 	':pass'=>$pass));
	header("location:viewapp.php");
}

?>


<!-- <input type="text" name="cname" class="input-field" placeholder="Enter Company Name" required>
          <input type="text" name="jname" class="input-field" placeholder="Enter Job Name" required>
           <input type="text" name="name" class="input-field" placeholder="Enter   Applicant Name" required>
          <input type="text" name="res" class="input-field" placeholder="Enter result" required> -->