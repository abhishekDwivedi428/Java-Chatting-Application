<%-- 
    Document   : verify_user
    Created on : Oct 6, 2018, 4:27:42 PM
    Author     : Abhishek
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        
        <%
        String user_id=    request.getParameter("user_id");
        
try{
   Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialproject", "root", "");
PreparedStatement ps=con.prepareStatement("Update user_master set verified=true where email=? ");
ps.setString(1, user_id);
int count=ps.executeUpdate();
  if(count > 0)
out.print("<script>alert('User Verified , You can login now !!!!')"
        + "</script>");
    
    con.close();
}
catch(Exception ex)
{
    ex.printStackTrace();
}
 %>
 
 
<!DOCTYPE html>

<html>
<head>
<title>Simple Login and Signup Form Flat Responsive Widget Template :: w3layouts</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Simple Login and Signup Form web template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="images/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.9.1.min.js"></script>
<!--// js -->
<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
    <link rel="stylesheet" href="css/fontawesome-all.css">
 <link href="//fonts.googleapis.com/css?family=Questrial" rel="stylesheet">
</head>
<body class="bg agileinfo">
    <!-- logo -->
				<h1>
					<a href="index.html"><i class="fab fa-accusoft"></i>Full Screen Enrol Form</a>
				</h1>
    <i class="fab fa-accusoft"></i>			<!-- //logo -->
   <h1 class="agile_head text-center" > <i class="fab fa-accusoft"></i>
    Company Name</h1>
   <div class="w3layouts_main wrap">
    <!--Horizontal Tab-->
        <div id="parentHorizontalTab_agile">
            <ul class="resp-tabs-list hor_1">
                <li>LogIn</li>
                <li>SignUp</li>
            </ul>
            <div class="resp-tabs-container hor_1">
               <div class="w3_agile_login">
                    <form action="DecideLogin.jsp" method="post" class="agile_form">
					  <p>Email</p>
					  <input type="email" name="email" required="required" />
					  <p>Password</p>
					  <input type="password" name="password" required="required" class="password" /> 
					  <div class="check">
							<label class="checkbox w3l"><input type="checkbox" name="checkbox" required="required"><i> </i>I accept the terms and conditions</label>
					 </div>
					  <input type="submit" value="LogIn" class="agileinfo" />
					</form>
					 <div class="login_w3ls">
				        <a href="#">Forgot Password ?</a>
					 </div>
                    
                </div>
                <div class="agile_its_registration">
                    <form action="DecideReg.jsp" method="post" class="agile_form">
					  <p>Username</p>
					  <input type="text" placeholder="User Name" name="username" required="required" />
					  <p>Email</p>
                        <input Placeholder="Email"type="email" name="email" required="required" />
                        <p>Phone Numbers</p>
                        <span ></span>
							<input placeholder="Phone Number" name="phonenumber" type="text" required="">
                        <br>
                        <p>Gender</p>
                    
                        <select   name="gender" style="width:380px; height:35px;" >
                                           <option value="">Select</option>            
                                            <option value="Male">Male</option>
                                          <option value="Female">Female</option>
                                          <option value="Other">Other</option>
                                             </select>
                        <br> <br>
					  <p>Password</p>
					  <input type="password" name="password" id="password1"  required="required">
					  <p>Confirm Password</p>
					  <input type="password" name="Confirm Password" id="password2"  required="required">
         	  			<div class="check w3_agileits">
							<label class="checkbox w3"><input type="checkbox" name="checkbox" required="required" ><i> </i>I accept the terms and conditions</label>
						</div>
					   <input type="submit" value="Signup"/>
					   <input type="reset" value="Reset" />
					</form> 
				</div>
            </div>
        </div>
		 <!-- //Horizontal Tab -->
    </div>
	<div class="agileits_w3layouts_copyright text-center">
			<p>© 2018 Company Name. All rights reserved | Design by <a href="//w3layouts.com/">Ganesh Gaitonde</a></p>
	</div>
<!--tabs-->
<script src="js/easyResponsiveTabs.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	//Horizontal Tab
	$('#parentHorizontalTab_agile').easyResponsiveTabs({
		type: 'default', //Types: default, vertical, accordion
		width: 'auto', //auto or any width like 600px
		fit: true, // 100% fit in a container
		tabidentify: 'hor_1', // The tab groups identifier
		activate: function(event) { // Callback function if tab is switched
			var $tab = $(this);
			var $info = $('#nested-tabInfo');
			var $name = $('span', $info);
			$name.text($tab.text());
			$info.show();
		}
	});
});
</script>
<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}
		function validatePassword(){
			var pass2=document.getElementById("password2").value;
			var pass1=document.getElementById("password1").value;
			if(pass1!=pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');	 
				//empty string means no validation error
		}

</script>
<!--//tabs-->
</body>
</html>


