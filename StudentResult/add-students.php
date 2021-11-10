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
  $s_no=$_POST['s_no'];
  $fac_no=$_POST['fac_no'];
  $enrolment=$_POST['enrolment'];
  $name=$_POST['name'];
  $father=$_POST['father'];
  $mother=$_POST['mother'];
  $sex=$_POST['sex'];
  $branch=$_POST['branch'];
  $religion=$_POST['religion'];
  $dob=$_POST['dob'];
  $special_category=$_POST['special_category'];
  $course_name=$_POST['course_name'];
  $state=$_POST['state'];
  $nationality=$_POST['nationality'];
  $per_address=$_POST['per_add'];
  $per_city=$_POST['per_city'];
  $per_pin=$_POST['per_pin'];
  $per_tel=$_POST['per_tel'];
  $per_mobile=$_POST['per_mobile'];
  $cor_add=$_POST['cor_add'];
  $cor_city=$_POST['cor_city'];
  $cor_pin=$_POST['cor_pin'];
  $cor_tel=$_POST['cor_tel'];
  $cor_mobile=$_POST['cor_mobile'];
  

  $insertquery="insert into students(sl_no, faculty_no, enrolment_no, full_name,
   father_name, mother_name, sex, branch, religion, date_of_birth, special_category,
    course_name,state, nationality, per_address1, per_city, per_pin, per_telephone,
     per_mobile, cor_address1, cor_city, cor_pin, cor_telephone, cor_mobile) 
     VALUES('$s_no','$fac_no','$enrolment','$name','$father','$mother','$sex','$branch','$religion',
     '$dob','$special_category','$course_name','$state','$nationality','$per_address','$per_city',
     '$per_pin','$per_tel','$per_mobile','$cor_add','$cor_city','$cor_pin','$cor_tel','$cor_mobile')";

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
                <h2 class="title">Student Admission</h2>
              </div>

              <!-- /.col-md-6 text-right -->
            </div>

            <!-- /.row -->
            <div class="row breadcrumb-div">
              <div class="col-md-6">
                <ul class="breadcrumb">
                  <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>

                  <li class="active">Student Admission</li>
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
                      <h5>Fill the Student info</h5>
                    </div>
                    <form action="add-students.php" method="POST">
                      <div class="form-row">
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Serial No"
                          name="s_no" >
                        </div>
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Faculty No"
                          name="fac_no" >
                        </div>
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Enrollment No"
                          name="enrolment" >
                        </div>
                      </div>
                      <div class="form-row">
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Full Name"
                          name="name" >
                        </div>
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Father's Name"
                          name="father" >
                        </div>
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Mother's Name"
                          name="mother" >
                        </div>
                      </div>

                      <!-- // change krna hai -->
                      <div class="form-row">
                        <div class="col-md-4 mb-4">  Sex :
                          <label class="radio-inline"><input type="radio" name="sex" value="Malw">Male </label>
                          <label class="radio-inline"><input type="radio" name="sex" value="Female">Female</label>
                          <label class="radio-inline"><input type="radio" name="sex" value="Others">Others</label>

                        </div>

                        <div class="col-md-4">
                          <input type="text" class="form-control" placeholder="branch"
                          name="branch" >
                        </div>
                        <div class="col-md-2">
                          <input type="text" class="form-control" placeholder="Religion"
                          name="religion" >
                        </div>
                        <div class="col-md-2">
                          <input type="date" class="form-control" placeholder="DOB" 
                          name="dob">
                        </div>
                      </div>


                      <div class="form-row">
                        <div class="col-md-3 mb-3">
                          <input type="text" class="form-control" placeholder="special Category" value="General"
                          name="special_category" >
                        </div>
                        <div class="col-md-3">
                          <input type="text" class="form-control" placeholder="CourseName" 
                          name="course_name" >
                        </div>
                        <div class="col-md-3">
                          <input type="text" class="form-control" placeholder="State" 
                          name="state" >
                        </div>
                        <div class="col-md-3">
                          <input type="text" class="form-control" placeholder="Nationality" 
                          name="nationality" >
                        </div>
                      </div>


                      <h5>corresponding address:</h5>
                      <div class="form-row">
                        <div class="col-md-3 mb-3">
                          <textarea class="form-control" rows="5" placeholder="Adress"
                          name="cor_add">enter address</textarea>
                        </div>
                        <div class="col-md-2">
                        <h5>City:</h5>
                          <input type="text" class="form-control" placeholder="city" 
                          name="cor_city" >
                        </div>
                        <div class="col-md-2">
                        <h5>Pin:</h5>
                          <input type="text" class="form-control" placeholder="Pin" 
                          name="cor_pin" >
                        </div>
                        <div class="col-md-2">
                        <h5>Telephone:</h5>
                          <input type="text" class="form-control" placeholder="Telephone"
                          name="cor_tel" >
                        </div>
                        <div class="col-md-3">
                        <h5>mobile:</h5>
                          <input type="text" class="form-control" placeholder="Mobile"
                          name="cor_mobile" >
                        </div>
                      </div>

                      <h5>Permanent address:</h5>
                      <div class="form-row">
                        <div class="col-md-3 mb-3">
                          <textarea class="form-control" rows="5" placeholder="Adress"
                          name="per_add" ></textarea>
                        </div>
                        <div class="col-md-2">
                          <h5>City:</h5>
                          <input type="text" class="form-control" placeholder="city"
                          name="per_city" >
                        </div>
                        <div class="col-md-2">
                          <h5>Pin:</h5>
                          <input type="text" class="form-control" placeholder="Pin"
                          name="per_pin" >
                        </div>
                        <div class="col-md-2">
                          <h5>Telephone:</h5>
                          <input type="text" class="form-control" placeholder="Telephone"
                          name="per_tel" >
                        </div>
                        <div class="col-md-3">
                          <h5>mobile:</h5>
                          <input type="text" class="form-control" placeholder="Mobile number"
                          name="per_mobile" >
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