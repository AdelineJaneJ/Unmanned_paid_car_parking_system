<%@page import="java.sql.Statement"%>
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
      
                   <%
                    String user=session.getAttribute("user").toString();
                    %>
               <style>
                                                       .lCheckbox{
           
            
            background-color: black;
        }                 
                                                     input.lCheckbox {
                                                         width: 40px;
                                                        height: 40px;
                                                        border: #32C2CD solid 3px;
                                                       
                                                     }
                                                      table{
                                                      margin-top: 100px;
                                                      margin-left: 400px;
                                                      
                                                    }
                                                    tr,td{
                                                        padding: 3px;
                                                        margin-left: 250px;
                                                    }
                                                                              </style>
                 <h2  style=" text-align:center; font-size:30px;  margin-top:10px; font-weight: bolder">Slot Booking</h2>
                 <h3 style=" text-align:center; font-size:30px;  margin-top:50px; font-weight: bolder ; color:#32C2CD">Total Slots: <span style="color:  darkorchid">Slot1  Slot2 Slot3 Slot4</span></h3>
                <form action="book1.jsp" method="get">
                       <table>
                           
                       <% 
	try{
	   
            String a11=null;
             	   HttpSession so = request.getSession(true);
               System.out.println(a11);

		 int flag=0;
	                Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car","root","root");
                         Statement st=con.createStatement();

                
		ResultSet rs1 = st.executeQuery("select distinct slot from sloting where status='0' ");

    while(rs1.next())
		{	
       		
	 %>
              <tr>
                <td width="202">&nbsp;</td>
                <td width="10">&nbsp;</td>
                <td width="173"><span class="style8"></span></td>
              </tr>
              <tr>
                <td><strong>Available Slots <%=rs1.getString(1)%></strong></td>
                <td>&nbsp;</td>
                <td><span class="style8"><strong>
                  <label>
                  <input type="radio" name="slot" id="radio" value="<%=rs1.getString(1)%>">
                  <%=rs1.getString(1)%>                  </label>
                </strong> </span></td>
              </tr>  <%
 
                                     } 								
													
													}
	catch (Exception e1) {
		e1.printStackTrace();
	}
	%>
                            <br>
                            <br>   
                          <tr><td align="center" colspan="2"><button type="submit" style=" margin-left: -60px; color: black; font-size: 15px; background-color:#32C2CD; font-family: sans-serif;">BOOK</button> </td></tr>
                            
                                                                        </table>
                                                                    </form>   <div class="row">
                   
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
