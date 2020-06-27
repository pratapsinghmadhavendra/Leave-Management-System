<%-- 
    Document   : employeehtml
    Created on : Nov 25, 2019, 1:33:52 AM
    Author     : Madips
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Employee Portal</title>
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
        <link href="css/employee.css" rel="stylesheet" type="text/css"/>
	
<!--===============================================================================================-->
<script type="text/javascript">
        function GetDays(){
                var dropdt = new Date(document.getElementById("drop_date").value);
                var pickdt = new Date(document.getElementById("pick_date").value);
                return parseInt((dropdt - pickdt) / (24 * 3600 * 1000));
        }

        function cal(){
        if(document.getElementById("drop_date")){
            document.getElementById("numdays2").value=GetDays();
        }  
    }

    </script>
</head>
<body style="background-image: url(img/3.jpg);background-size:100% 100% ">
	
	<div class="limiter">
            <aside class="top">
                <h1 class="h1" style="color:black">Employee Portal</h1>
                <div class="topnav-left">
                <a href="loginhtml.jsp" ><h4>Logout</h4></a>
                </div>

                <div class="topnav-right">
                <a href="changepass.jsp" ><h4>Change Password</h4></a>
                </div>
            </aside>
            </div>
            <aside class="left">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
                            <form class="login100-form validate-form" action="employee.jsp">
					<span class="h1" style="color: #0000FF">
                                            Apply Leave
					</span><br><br>

                                 
						Nature of Leave:&nbsp;&nbsp;&nbsp;&nbsp;
                  <select name="myList">
               <option>-Select-</option>
               <option>Duty Leave</option>
               <option>Casual Leave</option>
               <option>Special Casual Leave</option>
               <option>Medical Leave</option>
               <option>Half Pay Leave</option>
               <option>Leave Without Pay</option>
               <option>Extra Ordinary Leave</option>
               
</select></br></br>
                                                
                                                
						
					
                                    <span class="h3">
                                            *****Date*****
					</span><br/>
                                    <label> From:&nbsp;&nbsp; </label>
                                    <input class="wrap-input100 validate-input m-b-23" data-validate = "From-Date is required" type="date" name="from_date"  id="pick_date" onchange="cal()"><br/>
                                     <label> To:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input class="wrap-input100 validate-input m-b-23" data-validate = "To-Date is required" type="date" name="to_date" id="drop_date" onchange="cal()"><br/>
                                         <label> Reason: </label><br/>
                                         <textarea class="wrap-input100 validate-input m-b-23" data-validate = "Reason is required" rows="5" name="reason"></textarea></br>
                                         <label> Total NO. of days: </label>
                                         <input type="text"  class="wrap-input100 validate-input m-b-23" name="no_ofdays" id="numdays2">
                                         <br>
                                         
                                          
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Apply
							</button>
						</div>
					</div>
                                </form>
			</div>
		</div>
            </aside>
            <aside class="right">
                </br></br>
                <h1 class="h1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Leave Details</h1>
                <br><div class="container-login100-form-btn">
			<div class="wrap-login100-form-btn">
			<div class="login100-form-bgbtn"></div>
			<a href="emp_leavedetails.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View Leaves</a>
                        </div>
		</div></br></br></br></br></br></br></br></br></br></br></br>
                <h1 class="h1"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Remaining Leave Details</h1><br>
                <h3>Want to See Remaining Leaves:</h3><br>
                 <div class="container-login100-form-btn">
			<div class="wrap-login100-form-btn">
			<div class="login100-form-bgbtn"></div>
			<a href="leave_detail.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View Remaining Leaves</a>
                        
			</div>
           </div>
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
