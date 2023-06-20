<%--
  Created by IntelliJ IDEA.
  User: Taimoor
  Date: 6/14/2023
  Time: 12:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Member Area</title>
</head>

<body>

<%
    String userName = null , sessionID = null;

//    Again cookies should not be used for login and logout mechanism
    /*Cookie[] cookies = request.getCookies();

    if (cookies != null){
        for (Cookie cookie : cookies){
             if (cookie.getName().equals("username")){
                 userName = cookie.getValue();
             }

             if (cookie.getName().equals("JSESSIONID")){
                 sessionID = cookie.getValue();
             }
        }
    }
    if (userName == null || sessionID == null){
        response.sendRedirect("index.jsp");
    }
    */


//    We don't need to authenticate or redirect by this way rather our filter would this for us
    /*if (request.getSession().getAttribute("username") == null){
        response.sendRedirect(request.getContextPath()+"/hello-servlet?action=login");
    }
    else{
        userName = request.getSession().getAttribute("username").toString();
        sessionID = request.getSession().getId();
    }*/

    if (request.getSession().getAttribute("username") != null){
        userName = request.getSession().getAttribute("username").toString();
        sessionID = request.getSession().getId();
    }

%>

Username: <%= userName %> <br/>
SessionID: <%= sessionID%> <br/>

<p>
    Member Area!
</p>

<form action="<%= request.getContextPath()%>/member-area-controller" method="get">

    <input type="hidden" name="action" value="destroy" />
    <input type="submit" value="logout" />

</form>

</body>
</html>
