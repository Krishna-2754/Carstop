<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Success Page</title>
</head>
<body>
    <%
    response.setContentType("text/html");
    HttpSession sess = request.getSession();
    sess.invalidate();
    //out.println(ck.getValue()+ck.getName());
    response.sendRedirect("login.html");
    %>  
</body>
</html>