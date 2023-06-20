<%--
  Created by IntelliJ IDEA.
  User: Taimoor
  Date: 6/14/2023
  Time: 9:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Demo JSP</title>
</head>
<body>

<p>Its the demo page</p>

<%--    This method forwards the request without changing the URL--%>
<%--<%
    request.getRequestDispatcher("index.jsp").forward(request , response);
%>--%>

<%--This method redirects the request also changing the URL--%>
<%
    response.sendRedirect("index.jsp");
%>

</body>
</html>
