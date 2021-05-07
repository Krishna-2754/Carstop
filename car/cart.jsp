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
String add=request.getParameter("add");
String color=request.getParameter("color");
String car=request.getParameter("car");

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    PreparedStatement ps=conn.prepareStatement("insert into book1 values(?,?,?,?,?,?,?,?,?)");
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,mobile);
    ps.setString(4,add);
    ps.setString(5,color);
    ps.setString(6,"NOT PAID");
    ps.setString(7,"0");
    ps.setString(8,car);
    ps.setString(9,"confirmed");
    session.setAttribute("car",car);
    int x=ps.executeUpdate();
    if(x!=0)
    {
    	response.sendRedirect("pay.html");
    	//out.println("Hurray!!!! Your booking is successfull ,  You will get a confirmation mail to your registered email from our team shortly");
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