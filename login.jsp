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
<%! 
String userdbName;
String userdbPsw;
%>
<%
String name=request.getParameter("duser");
String pass=request.getParameter("dpass");
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    PreparedStatement ps=conn.prepareStatement("select * from demo where username=? and password=?");
    ps.setString(1,name);
    ps.setString(2,pass);
    ResultSet rs = ps.executeQuery();
    if(rs.next())
    { 
    	userdbName = rs.getString("username");
    	userdbPsw = rs.getString("password");
    	if(name.equals(userdbName) && pass.equals(userdbPsw))
    	{
    		Cookie logincookie= new Cookie("duser",name);
    		logincookie.setMaxAge(60);
    		response.addCookie(logincookie);
    		session.setAttribute("name",userdbName); 
    		session.setAttribute("username",userdbName);
    		response.sendRedirect("car/index.jsp"); 
    		
    	} 
    	
    }
    else
	{
    	//response.sendRedirect("register.html");
    	request.getRequestDispatcher("register.html").include(request,response);
	}
}
catch(Exception e){
    out.print(e);
}

%>
</body>
</html>