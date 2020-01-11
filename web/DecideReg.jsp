<%@page import="dao.Mailer"%>
<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
         String username =    request.getParameter("username");
         String password =    request.getParameter("password");
         String email    =    request.getParameter("email");
         String phonenumber=  request.getParameter("phonenumber");
         String gender=       request.getParameter("gender");
      //   String imgurl="C:\\Users\\Hp\\Desktop\\College Project\\JavaProject College\\web\\images\\abhishekimage.jpg";
          
  String imgurl="F:\\JavaProjectCollege\\web\\images\\abhishekimage.jpg";
   
         
         
         %>
         <jsp:useBean class="dto.User" id="u"/>
         <jsp:setProperty name="u" property="user_name" value="<%=username%>"/>
         <jsp:setProperty name="u" property="email"  value="<%=email%>"/>
         <jsp:setProperty name="u" property="password" value="<%=password%>"/>
         <jsp:setProperty name="u" property="user_gender"  value="<%=gender%>"/>
         <jsp:setProperty name="u" property="contact_no"  value="<%=phonenumber%>"/>
         <jsp:setProperty name="u" property="url_img" value="<%=imgurl%>"/>
         <jsp:setProperty name="u" property="verified"  value="false"/>
         
         
         <%
             UserDAO obj=new UserDAO();
             boolean b = obj.Register(u);
             
 if(b)
 {
     
             String to = email;
              String em_name = username;
              System.out.println(to);
              System.out.println(em_name);
              
              String subject = "Registered Successfully in Facebook";
    String msg = "Dear " + em_name+ ", you have been successfully registered using email id " + to
            + "\n To visit our website please click the following link!!! \n";
    String url = 
"<a href=http://localhost:8084/JavaProjectCollege/"
+ "verify_user.jsp?user_id="+to+">VERIFY</a>";
    Mailer.send(to, subject, msg + url);  
     %>
      <jsp:forward page="RegSuccessAlert.jsp"/>
       
        <%
          }
          else
          {
                  
        %>
       
         <jsp:forward page="RegFailedAlert.jsp"/>
        
        <%
            }
        %>   
 
             


%>
