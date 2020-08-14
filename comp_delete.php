<?php
include("connection.php");
session_start();

if ( isset($_GET['compID']) ){
    $sql = "DELETE FROM company WHERE compID = :id";
    $stmt = $conn->prepare($sql);
    $stmt->execute(array(':id' => $_GET['compID']));
    $_SESSION['success'] = 'Record deleted';
    header( 'Location: viewcompany.php');
}
?>