<%-- 
    Document   : pendingleaves
    Created on : Nov 15, 2019, 6:41:39 PM
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
       
        <h2 align="center"><font><strong>Pending Leaves are:-</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b> employee_username </b></td>
<td><b>nature_of_leave</b></td>
<td><b>from_date</b></td>
<td><b>to_date</b></td>
<td><b>leave_reason</b></td>
<td><b>total_no_days</b></td>
<td><b>status</b></td>
<td><b>approver_message</b></td>
</tr>
        <% 
            
            Connection con = null;
            try
            {
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","user");
            Statement st= con.createStatement();
            String q="select * from emp_leavedetails where status='pending' ";
            ResultSet rs=st.executeQuery(q);
            while(rs.next()){
                %>
                <tr bgcolor="#DEB887">

<td><%=rs.getString("emp_username") %></td>
<td><%=rs.getString("nature_of_leave") %></td>
<td><%=rs.getString("from_date") %></td>
<td><%=rs.getString("to_date") %></td>
<td><%=rs.getString("leave_reason") %></td>
<td><%=rs.getString("total_no_days") %></td>
<td><%=rs.getString("status") %></td>
<td><%=rs.getString("approver_msg") %></td>

</tr>

<% 
}
}
        catch (Exception e) {
e.printStackTrace();
}
        
        
        %>
        <form action="approverhtml.jsp">
            <button  type="submit"> 
          Back
        </button>      
   </form>    
 </table>   
 </body>
</html>
