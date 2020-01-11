<%-- 
    Document   : LoginProcess
    Created on : Oct 6, 2018, 3:04:25 PM
    Author     : Abhishek
--%>

<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
response.setContentType("text/html");
%>


<%
    Connection con;
    PreparedStatement pst;
String userid=(String)session.getAttribute("userid");
try{
   Class.forName("com.mysql.jdbc.Driver");
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialproject", "root", ""); 
 
 pst=con.prepareStatement("Select * from user_master where email=?");
 pst.setString(1,userid);
 ResultSet rs=pst.executeQuery();

 
 while(rs.next())
 {
     String username = rs.getString(1);
    session.setAttribute("user_name", username);
    
  
    String phonenumber = rs.getString(4);
    session.setAttribute("mble", phonenumber);
    String imgurl1="abhishekimage.jpg";
        Path p = Paths.get(rs.getString("imgurl"));
       String filepath = p.getFileName().toString();
       session.setAttribute("imgurl", filepath);
        con.close();
 

    if(imgurl1.equals(filepath))
    {
 %>
<jsp:forward page="ProfilePictureUpload.jsp"/>

<%
    }
else
{
%>
<jsp:forward page="1_HomePage.jsp"/>

<%
}
}
}
catch(Exception ex)
{
   System.out.println(ex);
}

%>
