
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String user,pass;
user=request.getParameter("user");
pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/car","root","root");
PreparedStatement ps=con.prepareStatement("select * From reg where user='"+user+"' and pass='"+pass+"' ");
System.out.println(ps);
ResultSet rs=ps.executeQuery();
if(rs.next()){
    String email=rs.getString("email");
 
System.out.println(ps);
session.setAttribute("user",user);

session.setAttribute("email",email);
out.println("<script>"
                            +"alert('Welcome  "+user+"')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/uhome.jsp");
                    rd.include(request, response);
}
else
{
out.println("<script>"
                            +"alert('Please Enter Valid Username and Password')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/user.jsp");
                    rd.include(request, response);
}
%>

