<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
?<!DOCTYPE html>
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
                        <a style=" font-size:20px;" href="profile.jsp"></i>Profile</a>
                    </li>
					<li>
                        <a   style=" font-size:20px;" href="slot.jsp"></i>Slot Booking</a>
                    </li>
                                       		<li>
                        <a   style=" font-size:20px;" href="summary.jsp"></i>Summary</a>
                    </li>
                   		<li>
                        <a   style=" font-size:20px;" href="index.html"></i>Logout</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                     <h2  style=" text-align:center; font-size:30px;  margin-top:10px; font-weight: bolder">Profile</h2>
                <style>
                    tr,td{
                                    
                                        font-size: 20px;
                                        color: black;
                                        font-weight: bold;
                                        padding: 5px;
                    }
                    table,tr,th,td{
                                        margin-left: 250px;
                                        height: auto;
                        		border-collapse: collapse;
                        		border:2px solid #0056b3;
                                        border-radius: 20px;
                        		padding:5px;
                        		text-align:center;
                                        color: #00cae3;
                                        border-color: black;
                                        
                                        
                    }
                    th{
                                        color: crimson;
                                        
                    }
                    table{
                                        height: auto;
                                        width: 500px;
                        }
                        	
                        	
                        	
                </style>

  
        <div class="header-text">
            <br>
            <br>
            <div class="container">
                
                           
                           
      
  <%                    
      String user=session.getAttribute("user").toString();
    
      Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car","root","root");
                        PreparedStatement query=con.prepareStatement("select * from reg Where user='"+user+"'");
                        ResultSet rs=query.executeQuery();
                        System.out.println(query);
                        while(rs.next()){
                         %>
                         <table>
                            <tr>
                            <tr align="center"><td colspan="2"><img src="upload/<%=rs.getString("image")%>" alt="image" style=" border-radius:10px; width:80px; height: 80px;"></td></tr>
                            
                            <tr><th>Username</th><td><%=rs.getString("user")%></td></tr>
                            <tr><th>LastName</th><td><%=rs.getString("lname")%></td></tr>
                            <tr><th>Password</th><td><%=rs.getString("pass")%></td></tr> 
                            <tr><th>Email</th><td><%=rs.getString("email")%></td></tr>
                            <tr><th>Mobile</th><td><%=rs.getString("mobile")%></td></tr>
                              <tr><th>Gender</th><td><%=rs.getString("gender")%></td></tr> 
                              <tr><th>Blood Group</th><td><%=rs.getString("blood")%></td></tr>
                            <tr><th>DOB</th><td><%=rs.getString("date")%></td></tr>
                            <tr><th>Car Name</th><td><%=rs.getString("car")%></td></tr>
                            <tr><th>TN Registration</th><td><%=rs.getString("tn")%></td></tr> 
                            
                            <tr><th>Mobile</th><td><%=rs.getString("mobile")%></td></tr>
                            <tr><th>Location</th><td><%=rs.getString("location")%></td></tr>
                      
                            
                     <%}%></table> </form>  
                    <br><br><br><br></div></div></div>
                   
             
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
