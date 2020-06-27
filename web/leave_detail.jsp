<%-- 
    Document   : leave_detail
    Created on : Nov 5, 2019, 10:06:32 AM
    Author     : Madips
--%>
<html>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String u=null;
    try 
            {
            u=session.getAttribute("userN").toString();
            //out.print(username);
            }
                catch(Exception ex)
            {
            
           }
        Connection con = null;
  %>
        <h2 align="center"><font><strong>Leave Detail is Following:-</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">

<tr bgcolor="#A52A2A">
<td><b> employee_username </b></td>
<td><b>duty_leave</b></td>
<td><b>casual_leave</b></td>
<td><b>special_casual_leave</b></td>
<td><b>medical-leave</b></td>
<td><b>half_pay_leave</b></td>
<td><b>leave_without_pay</b></td>
<td><b>extraordinary_leave</b></td>

<td><form action="employeehtml.jsp">
            <button  type="submit"> 
          Back to Employee Portal
        </button>  
    </form></td>
</tr>

<%
 
try    
{

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","user");
Statement st= con.createStatement();
String q= "select * from  emp_remainleave where emp_username='"+u+"'";
ResultSet rs=st.executeQuery(q);
            while(rs.next())
            {
                %>
                <tr bgcolor="#DEB887">

<td><%=rs.getString("emp_username") %></td>
<td><%=rs.getString("duty_leave") %></td>
<td><%=rs.getString("casual_leaves") %></td>
<td><%=rs.getString("special_casualleave") %></td>
<td><%=rs.getString("medical_leave") %></td>
<td><%=rs.getString("halfpay_leave") %></td>
<td><%=rs.getString("leave_withoutpay") %></td>
<td><%=rs.getString("extraordinary_leave") %></td>

</tr>

<% 
}
con.close();
}
catch (Exception e) 
{
e.printStackTrace();
}
%>

</body>
</html>

