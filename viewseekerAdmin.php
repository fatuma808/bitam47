<?php

include("menus/menu_admin.php");
  ?>

  <?php 
include 'connection.php';
session_start();
if (!isset($_SESSION['user'])) {
  header("location:home.php");
}
 ?>

 <div class="container">

  <div class="row">

   <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>

   <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 table-responsive" style="margin: 10px 0;">
     <h1 style=" font-family: Times New Roman; font-size: 12px; color: blue; text-align: center;"> <b> VIEW JOB APPLICATION</b></h1>
     <table id="data" class="table table-hover table-striped row" width="100%">
      <thead >
        <tr style="background: lightblue;">
          <th>FullName</th>
          <th>Gender</th>
          <th>DOB</th>
          <th>Address</th>
          <th>PhoneNumber</th>
          <th>Email</th>
          <th>Username</th>
          <th>Role</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>
      </thead>
      <tbody>

         <?php
include("connection.php");
?>
<?php 
    $sql="SELECT Name,Gender,DOB,Address,PhoneNo,Email,Username,Role ,SeekerID FROM job_seeker ";
    $stmt=$conn->query($sql);

    while ( $row = $stmt->fetch(PDO::FETCH_ASSOC) ) {
    echo "<tr><td>";
    echo(htmlentities($row['Name']));
    echo("</td><td>");
    echo (htmlentities($row['Gender']));
    echo("</td><td>");
    echo (htmlentities($row['DOB']));
    echo("</td><td>");
    echo (htmlentities($row['Address']));
    echo("</td><td>");
    echo (htmlentities($row['PhoneNo']));
    echo("</td><td>");
    echo (htmlentities($row['Email']));
    echo("</td><td>");
    echo (htmlentities($row['Username']));
    echo("</td><td>");
    echo (htmlentities($row['Role']));
    echo("</td><td>");
    echo('<a href="Sek_edit.php?SeekerID='.$row['SeekerID'].'"> <b> Edit </b> </a>');
    echo("</td><td>");
    echo('<a href="sek_delete.php?SeekerID='.$row['SeekerID'].'"><b> Delete </b></a>');
    echo("</td></tr>\n");
    }
 ?>


      </tbody>
      <tfoot>
        <tr style="background: lightblue;">
          <th>FullName</th>
          <th>Gender</th>
          <th>DOB</th>
          <th>Address</th>
          <th>PhoneNumber</th>
          <th>Email</th>
          <th>Username</th>
          <th>Role</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>
      </tfoot>

    </table>
  </div>

  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>
</div>
</div>
<?php

include("menus/footer.php");
  ?>


</body>

</html>
