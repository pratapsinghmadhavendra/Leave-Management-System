<%-- 
    Document   : adminhtml
    Created on : Nov 24, 2019, 11:29:54 PM
    Author     : Madips
--%>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Admin Portal</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
        <link href="css/admin.css" rel="stylesheet" type="text/css"/>
	
<!--===============================================================================================-->
    
</head>
<body style="background-image: url(img/2.jpg);background-size:100% 100% ">
	
	<div class="limiter">
            <aside class="top">
                <h1 class="h1" style="color: orange">Admin Portal</h1>
                <div class="topnav-left">
                <a href="loginhtml.jsp" ><h4>Logout</h4></a>
                </div>
                <div class="top_menu">
                    <a href="changepass.jsp"><h4>Change Password</h4></a>
                    </div>
            </aside>
            </div>
            <aside class="left">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                            
                            <form class="login100-form validate-form" action="admin.jsp" method="post">
					<span class="h1" style="color: #0000FF">
                                            New Registration
					</span><br/><br/>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Id is required">
						<span class="label-input100">Employee ID</span>
						<input class="input100" type="text" name="txtid" placeholder="Enter the Employee Id">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
                                    <div class="wrap-input100 validate-input m-b-23" data-validate = "Name is required">
						<span class="label-input100">Employee Name</span>
						<input class="input100" type="text" name="txtname" placeholder="Enter the Employee Name">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
                                    <div class="wrap-input100 validate-input m-b-23" data-validate = "Phone No is required">
						<span class="label-input100">Phone No</span>
                                                <input class="input100" type="text" pattern="[6-9]{1}[0-9]{9}" name="txtphone" placeholder="Enter the Phone number">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
                                    <div class="wrap-input100 validate-input m-b-23" data-validate = "Email is required">
						<span class="label-input100">Employee Email</span>
                                                <input class="input100" type="email" pattern="[^ @]*@[^@]*" name="txtemail" placeholder="Enter the Email">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
                                    
                                    <div class="wrap-input100 validate-input m-b-23" data-validate = "Address is required">
						<span class="label-input100">Address</span>
						<input class="input100" type="text" name="txtadd" placeholder="Enter the Address">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
                                        <div class="wrap-input100 validate-input m-b-23" data-validate = "Gender is required">
						<span class="label-input100"><b>Gender</b></span><br><br>
					
                                                 <input type="radio" name="male" value="male">Male&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        <input type="radio" name="male" value="female">Female
						
					</div>
                                        Select Category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <select name="list" required>
               <option>-Select-</option>
               <option>Teaching Staff</option>
               <option>Lab Attendant</option>
               <option>Librarian</option>
               <option>Clerk Staff</option>
               <option>Non Teaching Staff</option>
               <option>Admin</option>
               <option>Approver</option>
               
</select></br></br>
						
                                    

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="txtpass" placeholder="Enter The password">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					
					
					<br/>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" >
								Register
							</button>
						</div>
					</div>

					
                                </form>
			</div>
		</div>
            </aside>
            <br><br><br><br>
            <aside class="right"> <br><br>
                <form action="inactiveemp.jsp">
                <h1 class="h3"style="color: orange">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Employee Details</h3>
                <br><div class="container-login100-form-btn">
			<div class="wrap-login100-form-btn">
			<div class="login100-form-bgbtn"></div>
			<a href="empdetails.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View   Employee Detail</a>
                        </div>
		</div><br><br>
                <h3 style="color: orange">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Make An Employee Inactive</h3><br>
                <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Employee Username to make Employee Inactive: </label> <input type="text"  name="emp_id">
                <br/><br/>
                <div class="container-login100-form-btn">
                    
			<div class="wrap-login100-form-btn">
			<div class="login100-form-bgbtn"></div>
                        <button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Make Employee Inactive</button>
                        
                  </div>
            
        </div>
                </form>
                
                <br><br><br> 
                <form action="particularemp_leavedetails.jsp">
                <h1 class="h3"style="color: orange"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Employee Leave Details</h3><br>
                <h4>Want to See Leave Detail of Employee?</h4><br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>Enter Particular Employee's Username:</label>
                <input type='text' name='txtuser'><br><br>
                 <div class="container-login100-form-btn">
			<div class="wrap-login100-form-btn">
			<div class="login100-form-bgbtn"></div>
			<button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View Leave Detail</button>
			</div>
            
        </div>
                </form>
                </aside>
           
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
