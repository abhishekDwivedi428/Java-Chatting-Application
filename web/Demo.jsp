<%-- 
    Document   : Network_Home
    Created on : Oct 19, 2018, 4:35:12 PM
    Author     : Abhishek
--%>

<%@page import="java.util.Date"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%-- 
    Document   : 1_HomePage
    Created on : Oct 6, 2018, 3:16:57 PM
    Author     : Abhishek
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<%
    String userid = "Abhishekdwivedi428@yahoo.com";
    
    
%>
<html>
<head>
<title>Shoppy an Admin Panel Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<link href="css/Homepage.css" rel="stylesheet" type="text/css" media="all"/>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<!--js-->
<script src="js/jquery-2.1.1.min.js"></script> 
<!--icons-css-->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
<!--static chart-->
<script src="js/Chart.min.js"></script>
<!--//charts-->
<!-- geo chart -->
    <script src="//cdn.jsdelivr.net/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
    <script>window.modernizr || document.write('<script src="lib/modernizr/modernizr-custom.js"><\/script>')</script>
    <!--<script src="lib/html5shiv/html5shiv.js"></script>-->
     <!-- Chartinator  -->
    <script src="js/chartinator.js" ></script>
    
<!--geo chart-->

<!--skycons-icons-->
<script src="js/skycons.js"></script>
<!--//skycons-icons-->
<style>
.abhishek{
            background-color: greenyellow;
         
            width: 1400px;
            height: 5px;
            padding-top: 220px; 
            padding-left: 60px;
        }
        .text{
            padding-left: 20px;
            
            
        }
        .post
        {
            padding-left: 680px;
            padding-top: 33px;
        }
        
        
        
       
                    #postdisplay {
                        width: 800px;
                        height:0px;
                        padding: 0px;

                        margin-top: 20%;
                    }
                        .Demo{
                            padding-top: 450px;
                            padding-left: 60px;
                        }
                   
                    .postdisplay2 {
                            width: 800px;
                            height:400px;
                            background-color: white;
                            padding: 10px;
                            
                            margin-bottom: 30px;
                            border-color: yellowgreen;
                            border-style: inset;
                            border-width: 5px;
                           
                            
                        }
                        
                         .postdisplay4 {
                            width: 80%;
                            height:50%;
                            background-color: white;s
                            color:#2E4880;
                            padding: 10px;
                            
                            margin-left: 18%;
                             border-color: yellowgreen;
                            border-style: inset;
                             border-width: 2px;
                            
                        }
                        
                        .test {
                            border-radius: 50%;
                            height:120px;
                            width:120px;
                            margin-top:5px; 
                            margin-left:-5px;
                            margin-bottom: -90px;

                        }
                        
                        .b1{
                        background-color: #008CBA; /* Green */
                        border: none;
                        color: white;
                        border-radius: 20px;
                        padding: 10px 32px;
                        text-align: center;
                        text-decoration: none;
                        display: inline-block;
                        font-size: 16px;
                        margin: 4px 2px;
                        cursor: pointer;
                    }    
        
      </style>  
       
</head>
<body>	
<div class="page-container">	
   <div class="left-content">
	   <div class="mother-grid-inner">
            <!--header start here-->
				<div class="header-main">
					<div class="header-left">
							<div class="logo-name">
									 <a href="#"> <h1>Socially</h1> 
									<!--<img id="logo" src="" alt="Logo"/>--> 
								  </a> 								
							</div>
							<!--search-box-->
								<div class="search-box">
									<form>
										<input type="text" placeholder="Search..." required="">	
										<input type="submit" value="">					
									</form>
								</div><!--//end-search-box-->
							<div class="clearfix"> </div>
						 </div>
						 <div class="header-right">
							<div class="profile_details_left"><!--notifications of menu start -->
								<ul class="nofitications-dropdown">
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have 3 new messages</h3>
												</div>
											</li>
											<li><a href="#">
											   <div class="user_img"><img src="images/p4.png" alt=""></div>
											   <div class="notification_desc">
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											</a></li>
											<li class="odd"><a href="#">
												<div class="user_img"><img src="images/p2.png" alt=""></div>
											   <div class="notification_desc">
												<p>Lorem ipsum dolor </p>
												<p><span>1 hour ago</span></p>
												</div>
											  <div class="clearfix"></div>	
											</a></li>
											<li><a href="#">
											   <div class="user_img"><img src="images/p3.png" alt=""></div>
											   <div class="notification_desc">
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											</a></li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all messages</a>
												</div> 
											</li>
										</ul>
									</li>
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have 3 new notification</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="user_img"><img src="images/p5.png" alt=""></div>
											   <div class="notification_desc">
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											  <div class="clearfix"></div>	
											 </a></li>
											 <li class="odd"><a href="#">
												<div class="user_img"><img src="images/p6.png" alt=""></div>
											   <div class="notification_desc">
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li><a href="#">
												<div class="user_img"><img src="images/p7.png" alt=""></div>
											   <div class="notification_desc">
												<p>Lorem ipsum dolor</p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li>
												<div class="notification_bottom">
													<a href="#">See all notifications</a>
												</div> 
											</li>
										</ul>
									</li>	
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">9</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have 8 pending task</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Database update</span><span class="percentage">40%</span>
													<div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													<div class="bar yellow" style="width:40%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
												   <div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													 <div class="bar green" style="width:90%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
													<div class="clearfix"></div>	
												</div>
											   <div class="progress progress-striped active">
													 <div class="bar red" style="width: 33%;"></div>
												</div>
											</a></li>
											<li><a href="#">
												<div class="task-info">
													<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
												   <div class="clearfix"></div>	
												</div>
												<div class="progress progress-striped active">
													 <div class="bar  blue" style="width: 80%;"></div>
												</div>
											</a></li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all pending tasks</a>
												</div> 
											</li>
										</ul>
									</li>	
								</ul>
								<div class="clearfix"> </div>
							</div>
							<!--notification menu end -->
							<div class="profile_details">		
								<ul>
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
     <span class="prfil-img"><img class="rounded" src="./images/<%=session.getAttribute("imgurl")%>"alt="" width="50" height="50" border-radius="50px"> </span> 
                               
												<div class="user-name">
                                                                                                      <% 
                                                                                            String username=(String)session.getAttribute("user_name");
                                                                                                       %>
        
													<p> <%=username%></p>
													<span>Administrator</span>
												</div>
												<i class="fa fa-angle-down lnr"></i>
												<i class="fa fa-angle-up lnr"></i>
												<div class="clearfix"></div>	
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="1_HomePage.jsp"><i class="fa fa-cog"></i> Settings</a> </li> 
											<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
											<li> <a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="clearfix"> </div>				
						</div>
				     <div class="clearfix"> </div>	
				</div>
<!--heder end here-->
<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
                
                                                                                                                      
         <div class="abhishek">
<form action="Upload_post.jsp"  method="post">
    
            
             <div class="postdisplay2">
                 <strong>   <h2 style="padding-left: 30px; padding-top: 10px; font-size: 25px; ">Hello: 
        
    
        
            <%=session.getAttribute("user_name")%>
            
                     </h2></Strong>
            <% Date date =new Date(); %>
            
                    <h4 style="float:right;margin-top:-15px"><%=date%></h4>

                        <img  class="test" src="./images/<%=session.getAttribute("imgurl")%>"/>

                        <div class="postdisplay4">
                            <h4>
                                <textarea style="width: 590px; height: 190px; background-color: azure;"  placeholder="what's  in your mind ?" name="post_content" required></textarea>
                            </h4>
                        </div>
                        <div class="post">
            <button style="padding: 5px 15px;">Post</button>
                </div>
                        
                        
                    </div>
    </h2>
   
    </form>
</div>           
 <div class="Demo">
<%   try {

                        
                       // String nw_name = "Sgsits";
                        //String nw_name
                          //     = request.getParameter("nw_name");

                         Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialproject", "root", ""); 
 
 
 PreparedStatement ps1=con.prepareStatement("select network_name from networkmembers_master where user_id=?");
 ps1.setString(1,userid);
 ResultSet rs1=ps1.executeQuery();
 while(rs1.next())
 {
 
 String nw_name=rs1.getString("network_name");
 

   String sql = "select posts_master.user_id, posts_master.post_date, posts_master.post_content, user_master.username,user_master.imgurl From posts_master INNER JOIN user_master ON posts_master.user_id=user_master.email WHERE posts_master.network_name = ? ORDER BY posts_master.post_date DESC ";
                      

                        PreparedStatement ps = con.prepareStatement(sql);
                        ps.setString(1, nw_name);
                        ResultSet rs = ps.executeQuery();
                        while (rs.next()) {

                            Path p = Paths.get(rs.getString("imgurl"));
                            String img = p.getFileName().toString();
                            String user_name = rs.getString("username");
                            String post_content=rs.getString("post_content");
                       
                            
                            String post_date=rs.getString("post_date");
                %>
                
               
                
                <div class="postdisplay2">
                    <br>
                    <h1>Network Name :<%=nw_name%></h1>
                    <hr size="10">
                    <h2> <%=user_name%></h2>
                    <h4 style="float:right;margin-top:-15px"> <%=post_date%></h4>

                        <img  class="test" src="./images/<%=img%>" alt="Avatar" >

                        <div class="postdisplay4">
                            <h4>
                                <%=post_content%>
                            </h4>
                        </div>
                        
                        
                    </div>
               
                    <%     } 
}con.close();
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                %>
    </div>
<!--COPY rights end here-->
</div>
</div>
<!--slider menu-->
    <div class="sidebar-menu">
		  	<div class="logo"> <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="#"> <span id="logo" ></span> 
			      <!--<img id="logo" src="" alt="Logo"/>--> 
			  </a> </div>		  
		    <div class="menu">
		      <ul id="menu" >
		        <li id="menu-home" ><a href="1_HomePage.jsp"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
		        <li><a href="CreatedNetwork.jsp"><i class="fa fa-cogs"></i><span>Created Network</span><span></span></a>
		          
		        </li>
		        <li id="menu-comunicacao" ><a href="JoinedNetwork.jsp"><i class="fa fa-book nav_icon"></i><span>Joined Network</span><span ></span></a>
		          
		        </li>
		          <li><a href="CreateNetworkPage.jsp"><i class="fa fa-map-marker"></i><span>Create a Network</span></a></li>
		        
		        
		        <li><a href="InviteUser.jsp"><i class="fa fa-bar-chart"></i><span>Invite</span></a></li>
		       
		        	
		        </li>
		         <li><a href="EditProfile.jsp"><i class="fa fa-cog"></i><span>Edit Profile</span><span  style="float: right"></span></a>
		         	
		         </li>
		         <li><a href="logout.jsp"><i class="fa fa-shopping-cart"></i><span>Logout</span><span  style="float: right"></span></a>
		         	
		         </li>
		      </ul>
		    </div>
	 </div>
	<div class="clearfix"> </div>
</div>
 
<!--slide bar menu end here-->
<script>
var toggle = true;
            
$(".sidebar-icon").click(function() {                
  if (toggle)
  {
    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
    $("#menu span").css({"position":"absolute"});
  }
  else
  {
    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
    setTimeout(function() {
      $("#menu span").css({"position":"relative"});
    }, 400);
  }               
                toggle = !toggle;
            });
</script>
<!--scrolling js-->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!--//scrolling js-->
<script src="js/bootstrap.js"> </script>
<!-- mother grid end here-->
</body>
</html>                     