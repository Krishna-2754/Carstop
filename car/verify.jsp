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

String email=request.getParameter("cardemail");
String amount=request.getParameter("amt");
int a=Integer.parseInt(amount);
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","manager");
    PreparedStatement ps=conn.prepareStatement("update book1 set payment_status=?, amount=? where email=?");
    ps.setString(1,"PAID");
    ps.setInt(2,a);
    ps.setString(3,email);
    session.setAttribute("mail", email);
    int x=ps.executeUpdate();
    if(x!=0)
    {
    	response.sendRedirect("cart_email.jsp");
    	//out.println("Hurray!!!! Your booking is successfull ,  You will get a confirmation mail to your registered email from our team shortly");
    }
    else{
    	//response.sendRedirect("register.html");
    	//request.getRequestDispatcher("register.html");
    	//response.sendRedirect("cart_email.jsp");
    	out.println("Invalid details");
    	
    }
}
catch(Exception e){
    out.print(e);
}

%>
</body>
</html>