<%-- 
    Document   : empdetails
    Created on : Nov 23, 2019, 12:15:41 AM
    Author     : Madips
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h2 align="center" style="color: #FF4500"><font><strong>Employee Details are:-</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#F0FFFF">
<td><b> Employee Id </b></td>
<td><b>Employee Name</b></td>
<td><b>Employee Phone</b></td>
<td><b>Employee Email</b></td>
<td><b>Employee Address</b></td>
<td><b>Employee Gender</b></td>
<td><b>Employee Category</b></td>
<td><b>Employee Active Status</b></td>
</tr>

<%
         String usrname=request.getParameter("emp_detail");
    
    Connection con=null;
            ResultSet rs=null;
            
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","user");
            Statement st=con.createStatement();
            String q="select * from emp_details where emp_email='"+usrname+"'";
            rs=st.executeQuery(q);
            while(rs.next())
            {
             %>
        <tr bgcolor="#DEB887">

<td><%=rs.getString("emp_id") %></td>
<td><%=rs.getString("emp_name") %></td>
<td><%=rs.getString("emp_phone") %></td>
<td><%=rs.getString("emp_email") %></td>
<td><%=rs.getString("emp_address") %></td>
<td><%=rs.getString("emp_gender") %></td>
<td><%=rs.getString("emp_category") %></td>
<td><%=rs.getString("empactive_status") %></td>


</tr>
<% 
}
con.close();
}

        catch (Exception e) {
e.printStackTrace();
}
%>
      
        
 <tr>
<td><form action="approverhtml.jsp">
            <button  type="submit"> 
          <b>Back</b>
        </button>      
        </form></td> 
        </tr>
</table>   
</body>
</html>
