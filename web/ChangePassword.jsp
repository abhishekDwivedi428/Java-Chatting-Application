<%-- 
    Document   : ChangePassword
    Created on : Oct 12, 2018, 10:58:21 PM
    Author     : Abhishek
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String oldpassword=request.getParameter("oldpassword");
    
String user_id = (String) session.getAttribute("userid");
    try {
        Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialproject", "root", "");
    String sql1 = " select * from user_master where email = ? and "
                + " password = ?";
        PreparedStatement ps = con.prepareStatement(sql1);
        ps.setString(1, user_id);
        ps.setString(2, oldpassword);
        ResultSet rs = ps.executeQuery();
        if (rs.isBeforeFirst()) {

            try {

                String password = request.getParameter("password");
                PreparedStatement ps1
                        = con.prepareStatement("update user_master set password = ? where email = ?");
                ps1.setString(1, password);
                ps1.setString(2, user_id);
                int count = ps1.executeUpdate();
                if (count > 0) {
                    response.sendRedirect("AlertSuccessPasswordChanged.jsp");
                }

            } catch (Exception e) {
                System.out.println(e);
            }

        } else {
            response.sendRedirect("AlertPasswordIncorrect.jsp");
        }
        con.close();
    } catch (Exception e) {
        System.out.println(e);
    }




%>

