<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AMS Admin| Staff Personal Information< </title>
      <link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
      <link rel="stylesheet" href="css/font-awesome.min.css" media="screen">
      <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen">
      <link rel="stylesheet" href="css/lobipanel/lobipanel.min.css" media="screen">
      <link rel="stylesheet" href="css/prism/prism.css" media="screen">
      <link rel="stylesheet" href="css/select2/select2.min.css">
      <link rel="stylesheet" href="css/main.css" media="screen">
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
  $staffID=$_POST['staffID'];
  $DOB=$_POST['DOB'];
  $email=$_POST['email'];
  $DOJ=$_POST['DOJ'];
  $designation=$_POST['designation'];
  $username=$_POST['staffID'];
  $password=$_POST['staffID'];
  
  
  $pass=password_hash($password,PASSWORD_BCRYPT);

  $insertquery="insert into staff(full_name,staff_id,date_of_birth,
  Email,year_of_join,designation,UserName,Password) 
     VALUES('$name','$staffID','$DOB','$email','$DOJ','$designation','$username','$pass')";

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
                <h2 class="title">staff personal Information</h2>
              </div>

              <!-- /.col-md-6 text-right -->
            </div>

            <!-- /.row -->
            <div class="row breadcrumb-div">
              <div class="col-md-6">
                <ul class="breadcrumb">
                  <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>

                  <li class="active">Staff Personal Information</li>
                </ul>
              </div>
            </div>

            <!-- /.row -->
          </div>
          <div class="container"> <div class=" text-center mt-5 ">
        <h1>Staff adding form</h1>
    </div>
    <div class="row ">
        <div class="col-lg-7 mx-auto">
            <div class="card mt-2 mx-auto p-4 bg-light">
                <div class="card-body bg-light">
                    <div class="container">
                        <form action="add-staff.php" method="POST">
                            <div class="controls">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="fullname">FullName *</label> <input id="fullname" type="text" name="name" class="form-control" placeholder="Please enter FullName *" required="required"> </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="staff-id">staff ID *</label> <input id="staff-id" type="text" name="staffID" class="form-control" placeholder="Please enter staff ID *" required="required" > </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="DOB">DOB</label> <input id="DOB" type="date" name="DOB" class="form-control" placeholder="Date of birth " > </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="email">Eamil-ID</label> <input id="email" type="email" name="email" class="form-control" placeholder="Enter email id " > </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="DOJ">date of joining </label> <input id="DOJ" type="date" name="DOJ" class="form-control" placeholder="Date of joing "> </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="designation">Designation </label> <input id="designation" type="text" name="designation" class="form-control" placeholder="Please enter staff ID " > </div>
                                    </div>
                                    
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                    </div>
                                    <div class="col-md-4">
                                       <input type="submit" name="submit" class="btn btn-success btn-send pt-2 btn-block " value="ADD Staff"> 
                                    </div>
                                    <div class="col-md-4">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div> <!-- /.8 -->
        </div> <!-- /.row-->
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