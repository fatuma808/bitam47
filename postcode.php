<?php
include("connection.php");
session_start();
if(isset($_POST['subm'])){
	
	$numb=$_POST['numb'];
	$name=$_POST['name'];
	$salary=$_POST['sal'];
	$skill=$_POST['skill'];
	$file=$_POST['fl'];
	$categ=$_POST['catt'];

	$sql1="SELECT compID FROM company WHERE Username=:user";
	$stmt=$conn->prepare($sql1);
	$stmt->execute(array('user' => $_SESSION['user']));
	echo $stmt->rowCount();
	if($stmt->rowCount()==1){
		$row=$stmt->fetch();
		$sql="INSERT INTO job (jobNumb,compID,JobName,JobSalary,Skill,Qualification,jobCategory) VALUES(:numb,:comp,:name,:sal,:skill,:fl,:catt)";
		$pre = $conn->prepare($sql);
		$pre->execute(array(':numb'=>$numb,':comp'=>$row["compID"],':name'=>$name,':sal'=>$salary,':skill'=>$skill,':fl'=>$file,':catt'=>$categ));
		header("location:compProfile.php");
	}

	
}

?>



