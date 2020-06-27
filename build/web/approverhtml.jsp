<%-- 
    Document   : approverhtml
    Created on : Nov 25, 2019, 1:30:26 AM
    Author     : Madips
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Approver Portal</title>
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
        <link href="css/approver.css" rel="stylesheet" type="text/css"/>
	
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
            <aside class="top">
                <h1 class="h1" style="color: orange">Approver Portal</h1>
                <div class="topnav-left">
                <a href="loginhtml.jsp" ><h4>Logout</h4></a>
                </div>

                <div class="topnav-right">
                <a href="changepass.jsp"  ><h4>Change Password</h4></a>
                </div>
            </aside>
            </div>
            <aside class="left">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form class="login100-form validate-form" action="approver.jsp">
					<span class="h1" style="color: #F0FFF0">
                                            Approve or Deny
					</span><br/><br/>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Employee's Username</span>
						<input class="input100" type="text" name="emp_user" placeholder="Enter the Employee's Username">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
                                       <div class="wrap-input100 validate-input m-b-23" data-validate = "Response  is reauired">
                                           <input type="radio" name="response" value="approved" onclick="">Approve?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        <input type="radio" name="response" value="denied">Deny? 
                                       </div>
                                         <label>Reason for Rejection: </label><br/>
                                         <textarea rows="5" name="reason"></textarea><br><br>
                                    
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Response
							</button>
						</div>
					</div> 

					
                                </form>
			</div>
		</div>
            </aside>
            <aside class="right">
                </br></br>
                <h1 class="h1" style="color: yellow">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pending Leaves</h1>
                <br><div class="container-login100-form-btn">
			<div class="wrap-login100-form-btn">
			<div class="login100-form-bgbtn"></div>
                        <a href="pendingleaves.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View Pending Leaves</a>
                        
			</div>
                    
		</div>
                </br></br></br></br></br></br></br></br></br>
                <form action="appemp_details.jsp">
                 <h1 class="h1" style="color: yellow"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Employee Details</h1><br>
                <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Want to See Detail of Employee?</h3><br>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>Enter Particular Employee's Username:</label>
                &nbsp;&nbsp;<input type="text" name="emp_detail"><br><br>
                 <div class="container-login100-form-btn">
			<div class="wrap-login100-form-btn">
			<div class="login100-form-bgbtn"></div>
                        <button> View Detail</button>
                           
                        
			</div>
           
        </div>
                </form>
                
	

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

