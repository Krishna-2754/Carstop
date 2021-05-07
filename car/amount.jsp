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
String name=request.getParameter("cardname");
String email=request.getParameter("cardemail");
String amount=request.getParameter("amt");
   try
   {
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
	  PreparedStatement ps=conn.prepareStatement("insert into amounts values(?,?,?)");
      ps.setString(1,name);
      ps.setString(2,email);
      ps.setString(3,amount);
      int x=ps.executeUpdate();
      if(x!=0)
      {
	     response.sendRedirect("verify.jsp");
	     //out.println("Hurray!!!! Your booking is successfull ,  You will get a confirmation mail to your registered email from our team shortly");
      }
      else
      {
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