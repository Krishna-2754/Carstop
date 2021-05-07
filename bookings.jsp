<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/n9.css">
<style>
table, th, td {
  border: 1px solid black;
}
.btn btn-danger{
	margin-top: -13px;
}
</style>
</head>
<body>
<%
String username = (String)session.getAttribute("username");
if(username==null||username.equals(""))
  response.sendRedirect("login.html");
%>

<div class="kuna38">
<h1><marquee>Welcome to CarStop...</marquee></h1>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1><marquee>Your Bookings...</marquee></h1>
</div>
<div class="kuna37">
<a href="car/index.jsp" class="btn btn-danger">BACK</a><br><br>
</div>
<%
String to = (String)session.getAttribute("name");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
Statement st=con.createStatement();
PreparedStatement pst=con.prepareStatement("select * from book1 where name=?");
pst.setString(1,to);
ResultSet rs=pst.executeQuery(); 
while(rs.next())
{
 %>
 <table align='center' border='1' width="100" style="width:100%" class="table table-dark">
 <tbody>
 <tr>
 <th width="25%">Name</th>
 <th width="25%">Email</th>
 <th width="25%">Mobile</th>
 <th width="25%">Address</th>
 <th width="25%">Color</th>
  <th width="25%">Payment_status</th>
    <th width="25%">Amount_Paid</th>
     <th width="25%">Selected car</th>
  <th width="25%">Status</th>
 
 </tr>
 <tr>
 <td width="25%"><%= rs.getString(1) %></td>
 <td width="25%"><%=rs.getString(2) %></td>
 <td width="25%"><%=rs.getString(3) %></td>
 <td width="25%"><%=rs.getString(4) %></td>
 <td width="25%"><%=rs.getString(5) %></td>
 <td width="25%"><%=rs.getString(6) %></td>
  <td width="25%"><%=rs.getString(7) %></td>
    <td width="25%"><%=rs.getString(8) %></td>
  <td width="25%"><%=rs.getString(9) %></td>
  
 <td><button onclick="parent.location='cancel.jsp'">CANCEL BOOKING</button>
 <td><button onclick="parent.location='car/pay.html'">PAY</button>
 </tr>
 </tbody>
  </table>
 

<%
}

}
catch(Exception e)
{
e.printStackTrace();
}
 %>

</body>
</html>