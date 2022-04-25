<%@page import="java.sql.*"%>
<html>
<head>
<title> Print values</title>
</head>
<body>
 <h1>Print Values</h1>
<%
    String s1=request.getParameter("s1");
    String s2=request.getParameter("s2");
    String s3=request.getParameter("s3");
    String s4=request.getParameter("s4");
    System.out.println(s1);
    System.out.println(s2);
    System.out.println(s3);
    System.out.println(s4);
    

                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car","root","root");
                         PreparedStatement query=con.prepareStatement("insert into monitor(s1,s2,s3,s4)values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
                         System.out.println(query);
                         query.executeUpdate();

%>
</body>
</html>