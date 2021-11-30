<!-- code for admin login  -->

<?php  
session_start();
error_reporting(0);
include('includes/config.php');
if($_SESSION['alogin']!=''){
$_SESSION['alogin']='';
}
if(isset($_POST['loginadmin']))
{
$uname=$_POST['usernameadmin'];
$password=md5($_POST['passwordadmin']);
$sql ="SELECT UserName,Password FROM admin WHERE UserName=:uname and Password=:password";
$query= $dbh -> prepare($sql);
$query-> bindParam(':uname', $uname, PDO::PARAM_STR);
$query-> bindParam(':password', $password, PDO::PARAM_STR);
$query-> execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
if($query->rowCount() > 0)
{
$_SESSION['alogin']=$_POST['username'];
echo "<script type='text/javascript'> document.location = 'dashboard.php'; </script>";
} else{

    echo "<script>alert('Invalid Details');</script>";

}

}

?> 

<?php
    include 'connection.php';
    if(isset($_POST['loginstaff'])){
        $email = $_POST['usernamestaff'];
        $password = $_POST['passwordstaff'];

        $email_search = "select * from staff where
        UserName = '$email' ";
        $query = mysqli_query($con,$email_search);

        $email_count = mysqli_num_rows($query);

        if($email_count)
        {
            $email_pass=mysqli_fetch_assoc($query);

            $db_pass = $email_pass['Password'];
            // $_SESSION['UserName']=$email_pass['UserName'];

            $pass_decode = password_verify($password,$db_pass);

            if($pass_decode)
            {
                header('location:dashboard-staff.php');
            }
             else
            {
               ?>
               <script>
                alert("password incorrect");
                </script>
                <?php
            }

        }
        else
        {
            ?>
            <script>
            alert("invalid username");
            </script>
            <?php
        }
    }


   ?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accreditation Management System</title>
    <link rel="stylesheet" href="/css/style.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    <style>
       #firstdiv{
           margin-top:50px

       }
       h1{
           margin-top:100px;
       } 
       img{
           border-radius:50%;
           width:100px;
           height:100px;
           align-items: center
       }
    </style>
    
</head>
<body>
    <h1 align="center">Accreditation Management System</h1>
    <div align="center">
    <img  src="image/logo.png" >
    </div>
<div class="container login-container">
            <div class="row main" id="firstdiv">
                <div class="col-md-6 login-form-1">
                    <h3>Admin Login</h3>
                    <form class="form-horizontal" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" name ="usernameadmin"placeholder="Username*"  />
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name ="passwordadmin" placeholder="Password *" value="" />
                        </div>
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" name="loginadmin" class="btn btn-success btn-labeled pull-right">Sign in<span class="btn-label btn-label-right"><i class="fa fa-check"></i></span></button>
                        </div>
                        
                    </form>
                </div>
                <div class="col-md-6 login-form-1">
                    <h3>Staff Login</h3>
                    <form class="form-horizontal" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" name ="usernamestaff"placeholder="Username*"  />
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name ="passwordstaff" placeholder="Password *" value="" />
                        </div>
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" name="loginstaff" class="btn btn-success btn-labeled pull-right">Sign in<span class="btn-label btn-label-right"><i class="fa fa-check"></i></span></button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>





                                           
        <!-- /.main-wrapper --> 

        <!-- ========== COMMON JS FILES ========== -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <script src="js/jquery-ui/jquery-ui.min.js"></script>
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <script src="js/pace/pace.min.js"></script>
        <script src="js/lobipanel/lobipanel.min.js"></script>
        <script src="js/iscroll/iscroll.js"></script> 

        <!-- ========== PAGE JS FILES ========== -->

        <!-- ========== THEME JS ========== -->
        <!-- <script src="js/main.js"></script>
        <script>
            $(function(){

            });
        </script>

         - ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ==========  -->
    </body>
</html>


