<!DOCTYPE html>
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
    
    
String id=u;
String leavenature=request.getParameter("myList");
String fromdate=request.getParameter("from_date");
String todate=request.getParameter("to_date");
String days=request.getParameter("no_ofdays");
String reason=request.getParameter("reason");

if((fromdate==null)&&(todate==null))
{
    %>
       
    <script type="text/javascript">
        window.alert("Please Enter Dates");
        window.location.href = "./employeehtml.jsp";
       </script>
    <%
    
}
else if(reason==null)
{%>
       
    <script type="text/javascript">
        window.alert("Please Enter the Rreason");
        window.location.href = "./employeehtml.jsp";
       </script>
    <%
       
    
        }
else
{
Connection con = null;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","user");
 
try{
Statement st= con.createStatement();
String q=("insert into emp_leavedetails values ('"+id+"','"+leavenature+"','"+fromdate+"','"+todate+"','"+reason+"','"+days+"','Pending','Pending')");

int rs=st.executeUpdate(q);    
if(rs==1)
{
    //out.println("Applied Successfully.");
    //response.sendRedirect("");
   %>
       
    <script type="text/javascript">
        window.alert("Applied Successfully");
        window.location.href = "./employeehtml.jsp";
       </script>
    <%
         //response.sendRedirect("employee.html");
        
   
            
}
else
{
    //out.println("Failed to Apply!");%>
      <script type="text/javascript">
        window.alert("Failed to Apply.Please try again!");
        window.location.href = "./employeehtml.jsp";
       </script>
    <%
}
con.close();
}
catch(Exception e)
{
   //out.println("Something Went Wrong!");%>
       <script type="text/javascript">
        window.alert("Something Went Wrong!");
        window.location.href = "./employeehtml.jsp";
       </script>
 <%
     }
      //session.setAttribute("usr",u);
}
%>
</body>
</html>
