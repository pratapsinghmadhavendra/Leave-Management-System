<%-- 
    Document   : forgotpass1
    Created on : Nov 22, 2019, 1:56:53 PM
    Author     : Madips
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Change Password</title>
    </head>
    <body>
       <%
      
      String user =session.getAttribute("userN").toString();
      String phoneno=request.getParameter("phone");
      String npass=request.getParameter("newpass");
      String confirm=request.getParameter("conpass");
      
      if(npass.equals(confirm)) 
      
      {
          Connection con = null;
         
      Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","user");
   
try
{
    Statement st=con.createStatement();
    String q="update emp_details set emp_password='"+confirm+"' where emp_email='"+user+"' ";
    int rs=st.executeUpdate(q);    
if(rs==1)
{
   %>
      %>
       <script type="text/javascript">
        window.alert("Password Changed");
        window.location.href = "./changepass.jsp";
       </script>
    <%
  
}
else
{
%>
       <script type="text/javascript">
        window.alert("Please Reenter the password");
        window.location.href = "./changepass.jsp";
       </script>
    <%
}
con.close();
}
 catch(Exception e)
{
 %>
       <script type="text/javascript">
        window.alert("Something went Wrong!");
        window.location.href = "./changepass.jsp";
       </script>
    <%
}
}
else
{%>
<script type="text/javascript">
        window.alert("Match the both Passwords");
        window.location.href = "./changepass.jsp";
       </script><%
}
%>
    </body>
</html>
