<%-- 
    Document   : admin
    Created on : Oct 31, 2019, 9:14:54 PM
    Author     : Madips
--%>
<!DOCTYPE html>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
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
Connection con = null;
String id=request.getParameter("txtid");
String name=request.getParameter("txtname");
String phone=request.getParameter("txtphone");
String email=request.getParameter("txtemail");
String address=request.getParameter("txtadd");
String gender=request.getParameter("male");
String category=request.getParameter("list");

String password=request.getParameter("txtpass");



if(category.equals("-Select-"))
{
    %>
     <script type="text/javascript">
        window.alert("Please Enter Category");
        window.location.href = "./adminhtml.jsp";
       </script>
        <%
}

else
{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","user");
try

{

Statement st= con.createStatement();
String q=("insert into emp_details values ('"+id+"','"+name+"','"+phone+"','"+email+"','"+address+"','"+gender+"','"+category+"','"+password+"','Active')");
int rs=st.executeUpdate(q);
if(rs==1)
{ 
            con.close();
//New query is started.for giving default  leave values to new registered employee 
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","user");
try
{
Statement st2= con.createStatement();
String q2="insert into emp_remainleave values ('"+email+"','10','8','10','10','20','0','0')";
int rs2=st2.executeUpdate(q2);
con.close();
}
catch(Exception excpt)
{

}
  %>
      <script type="text/javascript">
        window.alert("Congratulations");
        window.location.href = "./adminhtml.jsp";
       </script>
    <%
}
else
{
    //out.println("Failed to register!");%>
       <script type="text/javascript">
        window.alert("Failed to Register");
        window.location.href = "./adminhtml.jsp";
       </script>
        <%
            //response.sendRedirect("admin.html");
}
}

catch(Exception e)
{
   //out.println("ID already exists.Please try again");%>
   <script type="text/javascript">
        window.alert("Something went Wrong!");
        window.location.href = "./adminhtml.jsp";
       </script>
<%  }  
}
//response.sendRedirect("admin.html");
   

%>
</body>
</html>
