<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Park IT</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' /> 
     
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"> <strong>PARK IT</strong></a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
              
                        
                        
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
               
                    <!-- /.dropdown-tasks -->
                </li>
               
                </li>
           
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
		<div id="sideNav" href=""><i class="fa fa-caret-right"></i></div>
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                   <br>
                       <br>
                             <br>
                                   <br>
                                       <br>
                       <br>
                             <br>
                                   <br>
                    <li>
                        <a style=" font-size:20px;" href="admin.jsp"></i>ADMIN</a>
                    </li>
					<li>
                        <a   style=" font-size:20px;" href="user.jsp"></i> USER</a>
                    </li>
                   
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                    
                <style>
                          
                            
                            table,tr,td{
                                margin-left:350px;
                                font-size: 15px;
                                color: black;
                                padding: 5px;
                                margin-top:100px;
                                
                            }
                        </style>
                 <h2  style=" text-align:center; font-size:30px;  margin-top:50px; font-weight: bolder">User Register</h2>
                 <form action="Register" method="post" enctype="multipart/form-data"> 
                            <table align="center">
                            <tr><td><strong>Select Profile &emsp; </strong></td><td><input type="file" name="image" value="" style=" color: #2f323a; " required></td></tr>
                            <tr><td><strong>First Name&emsp; </strong></td><td><input type="text" name="user" value="" style=" color: #2f323a; " required></td></tr>
                            <tr><td><strong>Last Name&emsp; </strong></td><td><input type="text" name="lname" value="" style="  color: #2f323a;  " required></td></tr>
                            <tr><td><strong>Password &emsp; </strong></td><td><input type="password" name="pass" value="" style="  color: #2f323a;  " required></td></tr>
                            <tr><td><strong>Email &emsp; </strong></td><td><input type="email" name="email" value="" style=" color: #2f323a; " required></td></tr>
                            <tr><td><strong>Date of Birth &emsp; </strong></td><td><input type="text" name="date" value="" style=" color: #2f323a;  " required></td></tr>
                            </select></td></tr>
                            <tr><td><strong>Gender&emsp; </strong></td><td>
                            <input type="radio" name="gender" value="male" style=" "> Male
                            <input type="radio" name="gender" value="female"> Female
                            <input type="radio" name="gender" value="other"> Other</td></tr> 
                            <tr><td><strong>Blood Group &emsp; </strong></td><td><input type="text" name="blood" value="" style=" color: #2f323a;  " required></td></tr>
                             <tr><td><strong>Car Model&emsp; </strong></td><td><input type="text" name="car" value="" style="  color: #2f323a;  " required></td></tr>
                             <tr><td><strong>TN Registration&emsp; </strong></td><td><input type="text" name="tn" value="" style="  color: #2f323a;  " required></td></tr>
                             <tr><td><strong>Mobile&emsp; </strong></td><td><input type="text" name="mobile" value="" style="  color: #2f323a;  " required></td></tr>
                            
                             <tr><td><strong>Location&emsp; </strong></td><td><input type="text" name="location" value="" style=" color: #2f323a; " required></td></tr>
                            <tr><td align="center" colspan="2"><button type="submit" style=" margin-left: -60px; color: black; font-size: 15px; background-color:#32C2CD; font-family: sans-serif;">Register</button> </td></tr>
                                                           </table></form>
                
                <div class="row">
                    <div class="col-md-12">
                        
						
                    </div>
                </div>
		

                
		

	   
				
				
				
            

                    </div>
                    <div class="col-md-8 col-sm-12 col-xs-12">

                      

                    </div>
                </div>
                <!-- /. ROW  -->
			
		
				<footer><p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez</a></p>
				
        
				</footer>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
	 
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
	
	
	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>
	
	 <script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>
	
    <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>
 

</body>

</html>


