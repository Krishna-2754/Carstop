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
<%@ page import="java.io.*" %>
<%
String name=request.getParameter("rname");
String email=request.getParameter("remail");
String year=request.getParameter("ryear");
String company=request.getParameter("company");
String add=request.getParameter("add");
String file=request.getParameter("file");

try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    PreparedStatement ps=conn.prepareStatement("insert into sell values(?,?,?,?,?,?)");
    ps.setString(1,name);
    ps.setString(2,email);
    ps.setString(3,year);
    ps.setString(4,company);
    ps.setString(5,add);
    //ps.setString(6,file);
    FileInputStream fin=new FileInputStream("C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\krish\\car\\p5.jpg");
    ps.setBinaryStream(6,fin,fin.available());
    int x=ps.executeUpdate();
    if(x!=0)
    {
    	//response.sendRedirect("car/index.html");
    	out.println("Hurray!!!! Your booking is successfull ,  You will get a confirmation mail to your registered email from our team shortly");
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