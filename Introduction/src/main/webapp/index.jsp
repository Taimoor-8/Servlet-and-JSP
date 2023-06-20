<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Introduction</title>

</head>
<body>
    <%@ page import="java.io.PrintWriter" %>
<%--<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>--%>

<%--    Expression element is used to declare a variable as well as get value of the variable--%>
    <%! int x = 22; %>
    <%= x %>

<br/>

<%--We can also call a method by using expression element--%>
<%= new java.util.Date()   %>

<br/>

<%--We can also perform basic operations using expression elememt--%>
<%= 25*4  %>
<%= true  %>

<br/>

<%--We can use scriplet to perform bais and multiple java funtions in a single code--%>

<%--<%
/*int x = 20;
if (x>20){
    out.print("x is grater than 20");
}
else {
    out.print("x is less than 20");
}
    */

    for (int i = 0; i < 10; i++){
        out.print("<br/>");
        out.print(i);
    }
%>--%>

<%--Declaration statement is used to declare variables especially methods--%>
<%!
String message(){
    return "Hey there";
}
%>

<%= message()  %>

<br/>

<%--URL parameters can also be included using scriplet--%>
<%--<%
    out.println("Value1: " + request.getParameter("getValue1"));
    out.println("Value2: " + request.getParameter("getValue2"));
%>

<br/>--%>

<%--Used for adding static content on web page--%>
<%@ include file="text1.txt" %>

<br/>

<%--Used for adding dynamic content on web page--%>
<jsp:include page="text2.txt" />

<br/>

<%--Directive element is also used to import classes in JSP file--%>
<%@ page import="com.example.introduction.UserDefined" %>
<%
    out.print(new UserDefined().demo());
%>

<br/>

</body>
</html>