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
<body>
    <header>
       <h1 align="center">Change Password</h1>
    </header><br/><br/>
    <form action="changepass3.jsp">
    <div class="main">
        <aside class="center">
            <br/><br/><br/><br/><br/>
           
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label name="lbl_newpass"  Font-Bold="true" Font-Size="Larger"><b>New Password:</b></label>
            <input type="text" name="newpass" required><br /><br />
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label name="lbl_conpas" Font-Bold="true" Font-Size="Larger"><b>Confirm Password:</b></label>
            <input type="text" name="conpass" required><br /><br />
            
      
            <button name="btn_save">Save</button><br /><br />
            
               <a href="changepass2.jsp">BACK</a>
           
           
</aside> 
    </div>
    
    </form>
</body>
</html>

