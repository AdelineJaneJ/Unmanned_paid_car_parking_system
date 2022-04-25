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
                        <a style=" font-size:20px;" href="vcustomer.jsp"></i>Customer Details</a>
                    </li>
					<li>
                        <a   style=" font-size:20px;" href="vuser.jsp"></i>User Details</a>
                    </li>
                                       		<li>
                        <a   style=" font-size:20px;" href="vsummary.jsp"></i>Summary</a>
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
                    
                 <h2  style=" text-align:center; font-size:40px;  margin-top:10px; font-weight: bolder">Summary</h2>
                        
                    <br>
                         <br>
                    <style>
      table{
         
          width: 50%;
          color: #007bff;
         
          font-size: 20px;
          
      }
      table,tr,td{
          padding-bottom: 10px;
          border: #32C2CD 2px solid;
          border-collapse: collapse;
      }
      td{
          color: red;
      }
     
  </style>
   <table align="center" border="1" style="width: 90% !important; margin-left:50px;line-height: 1.7;border-radius: 12px;text-align:center;color: black;text-transform: capitalize;">
	        	<tr style="color: navy;font-weight: bold">
                           <td>SNO</td>
                           <td>Date</td>
                            <td>User Name</td>	
                                                      
                                
	        		
	        		
	        	</tr>
	            <%
                  
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car","root","root");
                        PreparedStatement query=con.prepareStatement("select * from booking group by date  ");
                        ResultSet rs=query.executeQuery();
	            	while(rs.next())
	            	{
                            
	            %>
	            			<tr>
                                            <td style=" color: black;"><%=rs.getString("sno") %></td>       
                                             <td style=" color: black;"><%=rs.getString("date") %></td>       
                                                  
                                            <td style=" color: black;"><%=rs.getString("user") %></td>       
                                                
                                              
                                          
                                                
                                        </tr>		
	            <%	
	            	}	
	            %>
	        </table><br><br>
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
