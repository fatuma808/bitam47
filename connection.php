<?php 
try{
	$conn = new PDO("mysql:host=localhost;port=3306;dbname=job",'root','');	
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e){
	echo $e->getMessage();
}

 ?>

