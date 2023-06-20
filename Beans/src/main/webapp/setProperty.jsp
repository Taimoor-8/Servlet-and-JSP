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
    <title>Set Property</title>
</head>
<body>

<jsp:useBean id="user" class="com.example.beans.User" scope="session"> </jsp:useBean>

<%--In this method we are passing values so there is no user interation--%>
<%--<jsp:setProperty name="user" property="firstName" value="Taimoor" /> <br/>

<jsp:setProperty name="user" property="lastName" value="Khalid" /> <br/>--%>

<%--Using form to set values so there ought be user interaction--%>
<form action="getProperty.jsp" method="post">

    First Name: <label>
    <input type="text" name="firstName"
           value='<jsp:setProperty property="firstName" name="user"/>'> <br/>
</label>

    Last Name: <label>
    <input type="text" name="lastName"
           value='<jsp:setProperty property="lastName" name="user" />'> <br/>
</label>

    <input type="submit" value="submit">

</form>

<%--<p>The values are set</p>--%>

</body>
</html>
