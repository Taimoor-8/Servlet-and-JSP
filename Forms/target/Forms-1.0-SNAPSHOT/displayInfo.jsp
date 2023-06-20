<%--
  Created by IntelliJ IDEA.
  User: Taimoor
  Date: 6/14/2023
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display Info</title>
</head>
<body>
Name: <%= request.getParameter("name")%><br/>

Gender: <%= request.getParameter("gender")%><br/>

Languages known: <%
    String [] languages = request.getParameterValues("language");
    if (languages != null){
        for (int i = 0; i < languages.length; i++){
            out.print("<br/>");
            out.print(languages[i]);
        }
    }
    else {
        out.print("No language is selected");
    }
%> <br/>

Country: <%= request.getParameter("country")%><br/>

</body>
</html>
