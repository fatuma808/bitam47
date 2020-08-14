<?php
include("connection.php");

if(isset($_POST['dosend'])){

	$comp=$_POST['num'];
	$name=$_POST['name'];
	$add=$_POST['add'];
	$phone=$_POST['numb'];
	$email=$_POST['email'];
	$user=$_POST['user'];
	$pass=$_POST['pass'];
	$file=$_POST['fl'];

	$sql="INSERT INTO company (compNumb,compName,Address,Email,ContNo,Username,Password,File) VALUES(:num,:name,:add,:numb,:email,:user,:pass,:fl)";
	$pre = $conn->prepare($sql);
	$pre->execute(array(':num'=>$comp,':name'=>$name,':add'=>$add,':numb'=>$phone,':email'=>$email,':user'=>$user,':pass'=>$pass,
		':fl'=>$file));
	header("location:login1.php");
}

?>

			