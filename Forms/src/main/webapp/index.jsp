<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
Enter your information
<%--This method is used to display information on anther JSP file--%>
<%--<form action="displayInfo.jsp" method="post">--%>

<%--This method is used to display information using servlet or java class--%>
<form action="<%=request.getContextPath()%>/hello-servlet" method="post">

    Name: <label>
    <input type="text" name="name" required />
</label><br/>

    Gender: <label>
    <input type="radio" name="gender" value="male" checked="checked">Male
    <input type="radio" name="gender" value="female">Female
</label><br/>

    Languages knows: <label>
    <input type="checkbox" name="language" value="English">English
    <input type="checkbox" name="language" value="Urdu">Urdu
    <input type="checkbox" name="language" value="Punjabi">Punjabi
</label><br/>

    Country: <label>
    <select name = "country">
        <option value="Pakistan">Pakistan</option>
        <option value="USA">USA</option>
        <option value="US">UK</option>
        <option value="Canada">Canada</option>
    </select>
</label><br/>

    <input type="submit" value="submit">

</form>

</body>
</html>