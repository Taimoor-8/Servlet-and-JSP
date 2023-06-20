<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>

<form action="<%= request.getContextPath()%>/hello-servlet" method="post">

    Username: <label>
    <input type="text" name="username" placeholder="Enter userName" required /> <br/>
</label>

    Password: <label>
    <input type="password" name="password" placeholder="Password" /> <br/>
</label>

    <input type="hidden" name="action" value="loginSubmit" />

    <input type="submit" value="submit">

</form>

</body>
</html>