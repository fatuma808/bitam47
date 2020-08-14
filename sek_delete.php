<?php
include("connection.php");
session_start();

if ( isset($_GET['SeekerID']) ){
    $sql = "DELETE FROM job_seeker WHERE seekerID = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute(array(':id' => $_GET['SeekerID']));
    $_SESSION['success'] = 'Record deleted';
    header( 'Location: viewseeker.php');
}
?>