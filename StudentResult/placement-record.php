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

                  <li class="active">Placement records</li>
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
                      <h5>List of placed students</h5>
                    </div>
                    <form action="add-students.php" method="POST">
                     

                    </form>
                    <div class="main-div">
       
        <div class="center-div">
            <div class="table-responsive">
                <table>
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>Name</th>
                            <th>Faculty</th>
                            <th>Discipline</th>
                            <th>Year of passing</th>
                            <th>On/Off campus</th>
                            <th>Company name</th>
                            <th>ctc</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                    <?php

                    include 'connection.php';

                    $selectquery = "select * from placement_record";

                    $query = mysqli_query($con,$selectquery);

                    // $nums=mysqli_num_rows($query);

                    // $res=mysqli_fetch_array($query);

                    // echo $res[2];
                    while($res=mysqli_fetch_array($query)){
                        ?>
                        <tr>
                            <td><?php echo $res['id'] ?></td>
                            <td><?php echo $res['student_name'] ?></td>
                            <td><?php echo $res['faculty_no'] ?></td>
                            <td><?php echo $res['discipline'] ?></td>
                            <td><?php echo $res['year_of_passing'] ?></td>
                            <td><?php echo $res['on_off_campus'] ?></td>
                            <td><?php echo $res['company_name'] ?></td>
                            <td><?php echo $res['ctc'] ?></td>
                        </tr>
                        <?php
                    }                
                    ?>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
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