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
                <h2 class="title">Course Details</h2>
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
          <div class="container-fluid">

            <div class="row">
              <div class="col-md-12">
                <div class="panel">
                  <div class="panel-heading">
                    <div class="panel-title">
                      <h5>Fill the Staff Info</h5>
                    </div>

                    <!-- staff info form  -->
                    <form>
                      <div class="form-row">
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Staff Id" required>
                        </div>
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Full Name " required>
                        </div>
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Father's Name" required>
                        </div>
                      </div>
                      <div class="form-row">
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Mother's Name" required>
                        </div>
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="year of Joining" required>
                        </div>
                        <div class="col-md-4 mb-3">
                          <input type="text" class="form-control" placeholder="Total Experience" required>
                        </div>
                      </div>

                     
                      <div class="form-row">
                        <div class="col-md-4 mb-4">  Sex :
                          <label class="radio-inline"><input type="radio" name="optradio" checked>Male </label>
                          <label class="radio-inline"><input type="radio" name="optradio">Female</label>
                          <label class="radio-inline"><input type="radio" name="optradio">Others</label>

                        </div>

                        <div class="col-md-4">
                          <input type="text" class="form-control" placeholder="branch" required>
                        </div>
                        <div class="col-md-2">
                          <input type="text" class="form-control" placeholder="Religion" required>
                        </div>
                        <div class="col-md-2">
                          <input type="date" class="form-control" placeholder="DOB" required>
                        </div>
                      </div>


                      <div class="form-row">
                        <div class="col-md-3 mb-3">
                          <input type="text" class="form-control" placeholder="special Category" required>
                        </div>
                        <div class="col-md-3">
                          <input type="text" class="form-control" placeholder="CourseName" required>
                        </div>
                        <div class="col-md-3">
                          <input type="text" class="form-control" placeholder="State" required>
                        </div>
                        <div class="col-md-3">
                          <input type="text" class="form-control" placeholder="Nationality" required>
                        </div>
                      </div>



                      <div class="form-row">
                        <div class="col-md-3 mb-3">
                          <label for="comment">Permanent Address1:</label>
                          <textarea class="form-control" rows="5" id="comment"></textarea>
                        </div>
                        <div class="col-md-3 mb-3">
                          <label for="comment">Corresponding Address2:</label>
                          <textarea class="form-control" rows="5" id="comment"></textarea>
                        </div>
                      </div>

                      <div class="col-md-3 mb-3">
                        <input type="submit" >
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