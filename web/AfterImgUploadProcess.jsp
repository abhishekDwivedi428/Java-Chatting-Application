<%@page import="java.nio.file.Paths"%>
<%@page import="java.nio.file.Path"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%
response.setContentType("text/html");
%> 
${sessionScope.user_id}<%

try{
request.getSession();

       String userid=(String)session.getAttribute("userid");



   String sql="select * from user_master where email = ?";
 Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialproject", "root", ""); 

PreparedStatement ps=con.prepareStatement(sql);
                               ps.setString(1,userid);
   ResultSet rs=ps.executeQuery();%>
  
  
       <%  rs.next();{
           Path p = Paths.get(rs.getString("imgurl"));
           String filepath = p.getFileName().toString();
           session.setAttribute("imgurl",filepath);
           
         
          response.sendRedirect("AfterImgUploadProcessAlert.jsp");
          
          
    }con.close();
    }catch(Exception e){
    System.out.println(e);
    }
%>

  
 