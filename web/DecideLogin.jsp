<%-- 
    Document   : DecideLogin
    Created on : Oct 6, 2018, 2:29:40 PM
    Author     : Abhishek
--%>

<%@page import="dao.UserDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email=request.getParameter("email");
            String password=request.getParameter("password");
          %>
          
          <jsp:useBean class="dto.User" id="u"/>
          <jsp:setProperty name="u" property="email"  value="<%=email%>"/>
          <jsp:setProperty name="u"  property="password" value="<%=password%>"/>
          
        
          <%
             UserDAO obj=new UserDAO(); 
            boolean b=obj.checkUser(u);
              if(b)
              {
                  session.setAttribute("userid", email);
     %>
     <jsp:forward page="LoginProcess.jsp"/>
     <%
         }
        else
{
%>
<jsp:forward  page="LoginFailedAlert.jsp"/>
<%
}
         
         
         
         
         
         %>
    </body>
</html>
