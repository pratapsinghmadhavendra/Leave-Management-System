<%-- 
    Document   : changepass2.jsp
    Created on : Nov 22, 2019, 3:49:21 PM
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
    <link href="css/forgetpassword.css" rel="stylesheet" type="text/css"/>
</head>
        <title>Where to go</title>
    </head>
    <body>
        <%
           String psw =session.getAttribute("userN").toString();
            out.print(psw);
            
             if(psw.equals("admin@gmail.com"))
    {
         
        response.sendRedirect("adminhtml.jsp");
        //out.println(username);
    }
             else if(psw.equals("approver"))
    {
         
        response.sendRedirect("approverhtml.jsp");
         //out.println(username);
    }
    else{
        
        
         response.sendRedirect("employeehtml.jsp");
             }


        %>
    </body>
</html>
