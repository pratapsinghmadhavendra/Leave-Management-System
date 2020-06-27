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
String username=request.getParameter("username");
 
String password=request.getParameter("pass");
if(username!=null)
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","user");
//Statement st= con.createStatement();
//ResultSet rs=st.executeQuery("select * from emp_details where emp_email='"+username+"' and emp_password='"+password+"'");
String q="select * from emp_details where emp_email=? and emp_password=?"; 
PreparedStatement psm=con.prepareStatement(q);
psm.setString(1,username);
psm.setString(2,password);
ResultSet rs=psm.executeQuery();

if(rs.next())
{
    /*out.println("Welcome");
    out.print(username);*/
    if(username.equals("admin@gmail.com"))
    {
         session.setAttribute("userN",username);
        response.sendRedirect("adminhtml.jsp");
        //out.println(username);
    }
    else if(username.equals("approver"))
    {
         session.setAttribute("userN",username);
        response.sendRedirect("approverhtml.jsp");
         //out.println(username);
    }
    else{
        
        session.setAttribute("userN",username);
         response.sendRedirect("employeehtml.jsp");
        //out.println(username);
    }
}
else
{
    //out.println("Login Failed!");%>
    <script>
        window.alert("Login Failed!");
        window.location.href="./loginhtml.jsp"
        
        </script>
        <%
}
}
else
{
    //out.println("Please enter username!");%>
    <script>
        alert("Please enter username!")
        
        </script>
        <%
        }
%>
</body>
</html>