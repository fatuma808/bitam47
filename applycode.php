
<?php
include("connection.php");
if(isset($_POST['send'])){
session_start();
  $jobId=$_POST['jno'];
  $level=$_POST['level'];
    $skill=$_POST['skill'];
    $cv=$_POST['cv'];
    $categ=$_POST['catt'];

    $sql="select SeekerID from job_seeker where Username=:user";

    $pre = $conn->prepare($sql);
    $pre->execute(array(':user'=>$_SESSION["user"]));
    if($pre->rowCount()==1){
      $row=$pre->fetch();
      $sql="INSERT INTO seek_jod(SeekerID, jobID) VALUES (:seeker,:job)";

      $pre = $conn->prepare($sql);
      $pre->execute(array(':seeker'=>$row['SeekerID'],':job'=>$jobId));
      $sql="INSERT INTO qualification (SeekerID ,level,Skill,CV,Category) VALUES(:id,:level,:skill,:cv,:catt)";
      $pre = $conn->prepare($sql);
      $pre->execute(array(':id'=>$row['SeekerID'],':level'=>$level,':skill'=>$skill,':cv'=>$cv,':catt'=>$categ));
    }
  	header("location:sek_prof.php");


}


?>