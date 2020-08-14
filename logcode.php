<?php 
	include("connection.php");

	if(isset($_POST['send'])){
		$user=$_POST['user'];
		$pass=$_POST['pass'];
		// $pass=sha1($pass);

		$sql="SELECT Username,Password FROM admin WHERE (Username=:user AND Password=:pass)";
		$stmt=$conn->prepare($sql);
		$stmt->execute(array('user'=>$user,'pass'=>$pass));
		if($stmt->rowCount()==1){
			session_start();
			$_SESSION['user']=$user;
			$_SESSION['Role']="Admin";   
			header("location:admin.php");

		}else{
			$sql="SELECT Username,Password FROM job_seeker WHERE (Username=:user AND Password=:pass)";
			$stmt=$conn->prepare($sql);
			$stmt->execute(array('user'=>$user,'pass'=>$pass));
			if($stmt->rowCount()==1){
				session_start();
				$_SESSION['user']=$user;
				$_SESSION['Role']="Participant";

				header("location:sek_prof.php");
			}else{
				$sql="SELECT Username,Password FROM company WHERE (Username=:user AND Password=:pass)";
				$stmt=$conn->prepare($sql);
				$stmt->execute(array('user'=>$user,'pass'=>$pass));
				if($stmt->rowCount()==1){
					session_start();
					$_SESSION['user']=$user;
					$_SESSION['Role']="Company";
					header("location:compProfile.php");
				}else{
					header("location:login1.php");
				}
			}
			
		}
	}else{
		header("location:login1.php");
	}
 ?>
