<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SRMS Admin| Student Admission< </title>
      <link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
      <link rel="stylesheet" href="css/font-awesome.min.css" media="screen">
      <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen">
      <link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen">
      <link rel="stylesheet" href="css/prism/prism.css" media="screen">
      <link rel="stylesheet" href="css/select2/select2.min.css">
      <link rel="stylesheet" href="css/main.css" media="screen">
      <link rel="stylesheet" href="css/form.css">
      <script src="js/modernizr/modernizr.min.js"></script>
</head>

<body class="top-navbar-fixed">

<?php
// error_reporting(0);
// include('includes/config.php');
include 'connection.php';
// include('connection.php');
if(isset($_POST['submit'])){
  $name=$_POST['name'];
  $fac_no=$_POST['fac_no'];
  $discipline=$_POST['discipline'];
  $year_of_passing=$_POST['year_of_passing'];
  $on_off_campus=$_POST['on_off_campus'];
  $company_name=$_POST['company_name'];
  $ctc=$_POST['ctc'];
  

  $insertquery="insert into placement_record(student_name, faculty_no, discipline, year_of_passing,
  on_off_campus,company_name,ctc) 
  VALUES('$name','$fac_no','$discipline','$year_of_passing','$on_off_campus','$company_name','$ctc')";
     $res = mysqli_query($con,$insertquery);

    if($res){
      ?>
      <script>
        alert("data inserted properly");
      </script>
      <?php
    }else {
      ?>
      <script>
        alert("data not inserted");
      </script>
      <?php
    }
 
}

?>


  <div class="main-wrapper">

    <!-- ========== TOP NAVBAR ========== -->
    <?php include('includes/topbar.php');?>
    <!-- ========== WRAPPER FOR BOTH SIDEBARS & MAIN CONTENT ========== -->
    <div class="content-wrapper">
      <div class="content-container">

        <!-- ========== LEFT SIDEBAR ========== -->
        <?php include('includes/leftbar.php');?>
        <!-- /.left-sidebar -->

        <div class="main-page">

          <div class="container-fluid">
            <div class="row page-title-div">
              <div class="col-md-6">
                <h2 class="title">Placement</h2>
              </div>

              <!-- /.col-md-6 text-right -->
            </div>

            <!-- /.row -->
            <div class="row breadcrumb-div">
              <div class="col-md-6">
                <ul class="breadcrumb">
                  <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>

                  <li class="active">Add placement record</li>
                </ul>
              </div>
            </div>

            <!-- /.row -->
          </div>
          <div class="container-fluid">

            <div class="row">
              <div class="col-md-12">
                <div class="panel">
                  <div class="panel-heading">
                    <div class="panel-title">
                      <h5>Fill the Student Info</h5>
                    </div>
                    <form action="add-placement.php" method="POST">
                      <div class="form-row">
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="student's Name" name="name">
                        </div>
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Faculty No" name="fac_no">
                        </div>
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Discipline" name="discipline">
                        </div>
                      </div>

                      <div class="form-row">
                        <div class="col-md-2 mb-3">
                          <input type="text" class="form-control" placeholder="Year of Passing" name="year_of_passing">
                        </div>
                        <div class="col-md-2 mb-3">
                          <input type="text" class="form-control" placeholder="CTC" name="ctc">
                        </div>
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="On/Off campus" name="on_off_campus">
                        </div>
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Company Name" name="company_name">
                        </div>
                      </div>

                      <div class="col-md-3 mb-3">
                        <input type="submit" name="submit" value="Add Student">
                      </div>

                    </form>
                  </div>
                </div>
              </div>
              <!-- /.col-md-12 -->
            </div>
          </div>
        </div>
        <!-- /.content-container -->
      </div>
      <!-- /.content-wrapper -->
    </div>
    <!-- /.main-wrapper -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/pace/pace.min.js"></script>
    <script src="js/lobipanel/lobipanel.min.js"></script>
    <script src="js/iscroll/iscroll.js"></script>
    <script src="js/prism/prism.js"></script>
    <script src="js/select2/select2.min.js"></script>
    <script src="js/main.js"></script>
    <script>
      $(function ($) {
        $(".js-states").select2();
        $(".js-states-limit").select2({
          maximumSelectionLength: 2
        });
        $(".js-states-hide").select2({
          minimumResultsForSearch: Infinity
        });
      });
    </script>
</body>

</html>