<%-- 
    Document   : UpdateDetails
    Created on : Oct 12, 2018, 10:12:23 PM
    Author     : Abhishek
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
  String user_name=  request.getParameter("username");
  String phonenumber= request.getParameter("phonenumber");
  
  
  if(user_name=="")
      user_name=(String) session.getAttribute("user_name");
  if(phonenumber=="")
      phonenumber=(String) session.getAttribute("mble");
  


try{
    String email=(String) session.getAttribute("userid");
     Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialproject", "root", "");
    PreparedStatement ps=con.prepareStatement("Update user_master set username=? , phonenumber=? where email = ?");
    ps.setString(1,user_name);
    ps.setString(2,phonenumber);
    ps.setString(3,email);
    int count=ps.executeUpdate();
    if(count>0)
    {
        try {
                String sql1 = "select * from user_master where email = ?";
                PreparedStatement ps1 = con.prepareStatement(sql1);
                ps1.setString(1, email);
                ResultSet rs = ps1.executeQuery();
                rs.next();
                String name = rs.getString("username");
                String no= rs.getString("phonenumber");
                session.setAttribute("user_name",name);
                session.setAttribute("mble",no);
                response.sendRedirect("AlertUserNameUpdated.jsp");
%>    
<% } catch (Exception e) {
                System.out.println(e);
            }

        }
    
    
    
    
}
catch(Exception ex)
{
    
}






%>
