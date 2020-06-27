<%-- 
    Document   : inactiveemp
    Created on : Nov 24, 2019, 9:23:03 PM
    Author     : Madips
--%>

<!DOCTYPE html>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.sql.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
 <%
     String id=request.getParameter("emp_id");
if(id!=null)
{
Connection con = null;
try
{
    Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","user");
Statement st= con.createStatement();
String q="update emp_details set empactive_status='Inactive' where emp_email='"+id+"' ";
int rs=st.executeUpdate(q); 
if(rs==1)
{
  %>

<script type="text/javascript">
        window.alert("Employee is now Inactive");
        window.location.href = "./adminhtml.jsp";
       </script>
       <%
}

else
{
%>

<script type="text/javascript">
        window.alert("Something Went Wrong!");
        window.location.href = "./adminhtml.jsp";
       </script>
       <%

}
con.close();
}

catch(Exception ex)
{
    %>

<script type="text/javascript">
        window.alert("Something Went Wrong!");
        window.location.href = "./adminhtml.jsp";
       </script>
       <%
    
}
}
else
{%>

<script type="text/javascript">
        window.alert("Pleae Enter  Employee ID");
        window.location.href = "./adminhtml.jsp";
       </script>
       <%
}
%>
    </body>
</html>
