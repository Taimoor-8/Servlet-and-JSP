<%--
  Created by IntelliJ IDEA.
  User: Taimoor
  Date: 6/14/2023
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get Property</title>
</head>
<body>

<jsp:useBean id="user" class="com.example.beans.User" scope="session"> </jsp:useBean>


FirstName: <jsp:getProperty name="user" property="firstName" /> <br/>

LastName: <jsp:getProperty name="user" property="lastName" />





</body>
</html>
