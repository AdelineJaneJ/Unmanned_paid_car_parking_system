<%@page import="mail.mail"%>
<%@page import="java.sql.*"%>
<%
String slot=request.getParameter("slot");
String user=session.getAttribute("user").toString();
System.out.println(slot);
System.out.println(user);

try{
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/car","root","root");
                         PreparedStatement query=con.prepareStatement("insert into booking(user,slot)values('"+user+"','"+slot+"') ");
                         PreparedStatement query1=con.prepareStatement("update  sloting set status='1' where slot='"+slot+"'  ");
                         System.out.println(query);
                         query.executeUpdate();
                          query1.executeUpdate();
                         ResultSet rs=query.executeQuery("Select * from reg where user='"+user+"' ");
                         while(rs.next()){
                    System.out.println("welcome..........");
                    String email=rs.getString("email");
                    System.out.println(email);
                    mail m=new mail(); 
                    String subject=" Slot Booking Confirmation";
                    String m1=user;
                    String message="Dear  Customer ,Thankyou for Choosing ParkIT your booking has been Confimred: Slot No: "+slot;
                    m.sendFromGMail("1cp.javateam2020", "java1cp2020@!",email, subject,message);
                  out.println("<script>"); 			
                    out.println("alert(\"Booking Confirmation mail sent \")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("slot.jsp");
                    rd.include(request,response);		
		}}
                       
        catch(Exception e){
            System.out.println(e);
            out.println("<script type=\"text/javascript\">"); 			
            out.println("alert(\"Invalid Login\")");
            out.println("</script>"); 
            RequestDispatcher rd=request.getRequestDispatcher("slot.jsp");
            rd.include(request, response);  
        }
                      



%>