<%-- 
    Document   : approver
    Created on : Nov 7, 2019, 11:10:07 AM
    Author     : Madips
--%>

<!DOCTYPE html>
<html>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
 <%
   
Connection con = null;
PreparedStatement ps = null;
String res=request.getParameter("response");
String reason=request.getParameter("reason");
String id=request.getParameter("emp_user");



Class.forName("com.mysql.jdbc.Driver");         
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","user");

try{
    

String q="update emp_leavedetails set status=? , approver_msg=? where emp_username=? ";

 ps = con.prepareStatement(q);
ps.setString(1,res);
ps.setString(2, reason);
ps.setString(3, id);
int i=ps.executeUpdate();
 //out.println(i);
if(i>0)
{ 
    
    //out.println("Congratulations!");
        con.close();
         %>
       <script type="text/javascript">
        window.alert("Responded Successfully");
        window.location.href = "./approverhtml.jsp";
       </script>
    <%
}

else
{
    //out.println("Failed to register!");%>
       <script type="text/javascript">
        window.alert("Something Went Wrong!");
        window.location.href = "./approverhtml.jsp";
       </script>
    <%
}
}
catch(Exception e)
{
   //out.println("ID already exists.Please try again");%>
      <script type="text/javascript">
        window.alert("ID Does not Exist!.Please Enter ID");
        window.location.href = "./approverhtml.jsp";
       </script>
    <%
}
%>
 </body>
</html>