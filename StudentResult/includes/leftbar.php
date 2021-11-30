<div class="left-sidebar bg-black-300 box-shadow ">
    <div class="sidebar-content">
        <div class="user-info closed">
            <img src="http://placehold.it/90/c2c2c2?text=User" alt="John Doe" class="img-circle profile-img">
            <h6 class="title">Admin</h6>
            <small class="info">PHP Developer</small>
        </div>
        <!-- /.user-info -->

        <div class="sidebar-nav">
            <ul class="side-nav color-gray">
                <li class="nav-header">
                    <span class="">Main Category</span>
                </li>

                <li>
                    <a href="dashboard.php"><i class="fa fa-dashboard"></i> <span>Dashboard</span> </a>
                </li>

                <li class="nav-header">
                    <span class="">Appearance</span>
                </li>  


                <!-- included student information connect add-student -->
                <li class="has-children">
                    <a href="#"><i class="fa fa-users"></i> <span>Students</span> <i
                            class="fa fa-angle-right arrow"></i></a>
                    <ul class="child-nav">
                        <li><a href="add-students.php"><i class="fa fa-bars"></i> <span>Add Students</span></a></li>
                        <li><a href="manage-students.php"><i class="fa fa fa-server"></i> <span>Manage
                                    Students</span></a>
                        </li>
                    </ul>
                </li>

                <!-- connect the staff personal information -->
                <li class="has-children">
                    <a href="#"><i class="fa fa-users"></i> <span>Staff</span> <i
                            class="fa fa-angle-right arrow"></i></a>
                    <ul class="child-nav">
                        <li><a href="add-staff.php"><i class="fa fa-bars"></i> <span>Add Staff</span></a></li>
                        <li><a href="manage-staff.php"><i class="fa fa fa-server"></i> <span>Manage
                                    Staff personal information</span></a>
                        </li>
                    </ul>
                </li>
             <!-- connect the course offered for computer engineering depaetment -->
                <li class="has-children">
                    <a href="#"><i class="fa fa-users"></i> <span>Course</span> <i
                            class="fa fa-angle-right arrow"></i></a>
                    <ul class="child-nav">
                        <li><a href="add-course.php"><i class="fa fa-bars"></i> <span>Add Course Details</span></a></li>
                        <li><a href="manage-Course.php"><i class="fa fa fa-server"></i> <span>Manage
                                    Courrse Information </span></a>
                        </li>
                    </ul>
                </li>

                <li class="has-children">
                    <a href="#"><i class="fa fa-users"></i> <span>Placement</span> <i
                            class="fa fa-angle-right arrow"></i></a>
                    <ul class="child-nav">
                        <li><a href="add-placement.php"><i class="fa fa-bars"></i> <span>Add record</span></a></li>
                        <li><a href="placement-record.php"><i class="fa fa fa-server"></i> <span>view record</span></a>
                        </li>
                    </ul>
                </li>

                <li><a href="change-password.php"><i class="fa fa fa-server"></i> <span>Admin Change Password</span></a></li>
            </ul>
        </div>
        <!-- /.sidebar-nav -->
    </div>
    <!-- /.sidebar-content -->
</div>