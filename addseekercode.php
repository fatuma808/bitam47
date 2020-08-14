<?php
include("connection.php");

if(isset($_POST['send'])){

	$name=$_POST['name'];
	$gender=$_POST['sex'];
	$date=$_POST['dob'];
	$add=$_POST['add'];
	$phone=$_POST['phone'];
	$email=$_POST['email'];
	$user=$_POST['user'];
	$pass=$_POST['pass'];

	$sql="INSERT INTO job_seeker (Name,Gender,DOB,Address,PhoneNo,Email,Username,Password) VALUES(:name,:sex,:dob,:add,:phone,:email,:user,:pass)";
	$pre = $conn->prepare($sql);
	$pre->execute(array(':name'=>$name,':sex'=>$gender,':dob'=>$date,':add'=>$add,':phone'=>$phone,':email'=>$email,':user'=>$user,
		':pass'=>$pass));
	header("location:login1.php");
}

?>


