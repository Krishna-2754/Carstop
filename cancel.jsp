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
   try
   {
	  String to = session.getAttribute("mail").toString();
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
      Statement st=con.createStatement();
      PreparedStatement pst=con.prepareStatement("delete from book1 where email=?");
      pst.setString(1,to);
      int x=pst.executeUpdate();
      if(x!=0)
      {
	     response.sendRedirect("bookings.jsp");
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