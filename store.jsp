<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
<%
String name=request.getParameter("rname");
String email=request.getParameter("remail");
String mobile=request.getParameter("mobile");
String pass=request.getParameter("pass");

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    PreparedStatement ps=conn.prepareStatement("insert into demo values(?,?,?,?)");
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,mobile);
    ps.setString(4,pass);
    session.setAttribute("Name", email);
    int x=ps.executeUpdate();
    if(x!=0)
    {
    	response.sendRedirect("email.jsp");
    	//response.sendRedirect("car/index.html");
    }
    else{
    	//response.sendRedirect("register.html");
    	//request.getRequestDispatcher("register.html");
    	out.println("Invalid details");
    	
    }
}
catch(Exception e){
    out.print(e);
}

%>
</body>
</html>