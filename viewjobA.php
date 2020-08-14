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

    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
      <h1 style=" font-family: Times New Roman; font-size: 12px; color: blue; text-align: center;"> <b> VIEW JOB APPLICATION</b></h1>
            <table id="data" class="table table-hover table-striped row" width="100%">
                    <thead >
                        <tr style="background: lightblue;">
                        <th>Sno</th>
                            <th>JobNumber</th>
                            <th>JobName</th>
                            <th>JobSalary</th>
                            <th>Skills</th>
                            <th>Qualification</th>
                            <th>Category</th>
                             <!-- <th>Apply</th> -->
                        </tr>
                    </thead>
          <tbody>

<!-- 
    $sql="SELECT compNumb,compName,Address,Email,ContNo,Username,File ,compID FROM Company ";
    $stmt=$conn->query($sql);


    while ( $row = $stmt->fetch(PDO::FETCH_ASSOC) ) {
 -->


             <?php
include("connection.php");
?>


<?php 
    $sql="SELECT jobNumb,JobName,JobSalary,Skill,Qualification,jobCategory,jobID FROM job ";
    
    $stmt=$conn->query($sql);

    while ( $row = $stmt->fetch(PDO::FETCH_ASSOC) ) {
    echo "<tr><td>";
    echo (htmlentities($row['jobNumb']));

    echo("</td><td>");
    echo (htmlentities($row['JobName']));
    echo("</td><td>");
    echo (htmlentities($row['JobSalary']));
    echo("</td><td>");
    echo (htmlentities($row['Skill']));
    echo("</td><td>");
    echo (htmlentities($row['Qualification']));
    echo("</td><td>");
    echo(htmlentities($row['jobCategory']));
    echo("</td><td>");
    // echo('<a href="apply.php?jobID='.$row['jobID'].'"> <b> Apply </b> </a>');
    echo("</td></tr>\n");


    }
 ?>

        
          </tbody>
           <tfoot>
                        <tr style="background: lightblue;">
              <th>Sno</th>
              <th>CompanyNumber </th>
              <th>CompanyName</th>
                            <th>JobNumber</th>
                            <th>JobName</th>
                            <th>JobSalary</th>
                            <th>Skills</th>
                            <th>Qualification</th>
                            <th>Category</th>
                            <!-- <th>Apply</th> -->
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
