<%-- 
    Document   : VerifyUser
    Created on : Oct 12, 2018, 6:20:49 PM
    Author     : Abhishek
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  String userid=request.getParameter("email");
  String networkname =request.getParameter("nw_name");
  
  
  try{
Class.forName("com.mysql.jdbc.Driver");


        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/socialproject", "root", "");
        PreparedStatement ps=con.prepareStatement("Select * from user_master where email=? ");
        ps.setString(1,userid);
        
        ResultSet rs=ps.executeQuery();
        if(rs.isBeforeFirst()) {
            try{
                
                try{
                     String sql3 = "INSERT INTO networkmembers_master"
                                + "(network_name,user_id) VALUES"
                                + "(?,?)";

                        PreparedStatement ps3 = con.prepareStatement("INSERT INTO networkmembers_master(network_name,user_id) VALUES(?,?)");
                        ps3.setString(1, networkname);
                        ps3.setString(2, userid);

                        int count3 = ps3.executeUpdate();
                        if (count3 > 0) {
                            try {
                                Boolean status = true;
                                String sql4 = "update networkinvite_master set status = ? where invite_id = ?";

                                PreparedStatement ps4 = con.prepareStatement(sql4);
                                ps4.setBoolean(1, status);
                                ps4.setString(2, userid);
                                int count4 = ps4.executeUpdate();
                                if (count4 > 0) {
                                    response.sendRedirect("AlertSuccessJoined.jsp");
                                }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }
                        }
                }
                catch(Exception ex)
                {
                    ex.printStackTrace();
                }
               
                
            }
            catch(Exception ex)
            {
                 response.sendRedirect("AlertInvalidUrl.jsp");
                ex.printStackTrace();
            }
            
        }
        else
        {
           response.sendRedirect("AlertNotRegister.jsp"); 
        }
                
        
  }
  catch(Exception ex)
  {
     ex.printStackTrace(); 
  }
  







%>