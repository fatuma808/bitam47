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
                  
          <th>Job Name</th>
          <th>Education Level</th>
          <th>Skills</th>
           <th>CV</th>
            <th>Catagories</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>
      </thead>
      <tbody>


         <?php
include("connection.php");
?>
<?php 
    // $sql="SELECT compNumb,compName,Address,Email,ContNo,Username,File ,compID FROM Company ";
    $stmt=$conn->query($sql);


  
    while ( $row = $stmt->fetch(PDO::FETCH_ASSOC) ) {
    echo "<tr><td>";
    echo(htmlentities($row['JobName']));
    echo("</td><td>");
    echo (htmlentities($row['level']));
    echo("</td><td>");
    echo (htmlentities($row['Skill']));
    echo("</td><td>");
    echo (htmlentities($row['CV']));
    echo("</td><td>");

    echo (htmlentities($row['Category']));
    echo("</td><td>");
    echo('<a href="result.php?QualifID='.$row['QualifID'].'"> <b> Result </b> </a>');
    echo("</td></tr>\n");
    }
 ?>


      </tbody>
      <tfoot>
        <tr style="background: lightblue;">
         
          <th>Job Name</th>
          <th>Education Level</th>
          <th>Skills</th>
           <th>CV</th>
            <th>Catagories</th>
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
