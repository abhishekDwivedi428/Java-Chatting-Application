<%-- 
    Document   : Upload_post
    Created on : Oct 19, 2018, 4:57:28 PM
    Author     : Abhishek
--%>


<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>




<%
   long date =  System.currentTimeMillis();
    
    Timestamp ts = new Timestamp(date);
  String Network_name=(String) session.getAttribute("Network_name");
  
String userid=(String) session.getAttribute("userid");
try{
    String post_content=request.getParameter("post_content");
    
    Class.forName("com.mysql.jdbc.Driver");
      Connection   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialproject", "root", "");  
      PreparedStatement ps=con.prepareStatement("insert into posts_master(user_id,post_date,post_content,network_name) values(?,?,?,?)");
       ps.setString(1,userid);
       ps.setTimestamp(2,ts);
       ps.setString(3,post_content);
       ps.setString(4,Network_name);
       
		    int count = ps.executeUpdate();
		    if(count>0)
		    {
		    	 response.sendRedirect("AlertPost_Uploaded.jsp");
		    }
		    con.close();
      } catch(Exception ex) {
         System.out.println(ex);
         ex.printStackTrace();
      }
    
    
%>
