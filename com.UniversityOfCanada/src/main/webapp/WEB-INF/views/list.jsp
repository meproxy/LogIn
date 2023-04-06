<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Registrations</title>

<style type="text/css">
body {
	background-color: rgb(255, 255, 153);
}

.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
.head {
	text-align: center;
	color: rgb(0, 0, 102);
	text-shadow: 2px 2px white;
	margin-top: 100px;
	margin-bottom: 50px;
	font-weight: bold;
	font-size: 45px;
	font-family: cursive;
}

.log {
	align-content: center;
	}

table {
	border: 7px rgb(0, 0, 102);
	border-style: inset;
	margin: 20px;
	font-size: 20px;
	background-color: rgb(230, 242, 255);
	height: auto;
	width: auto;
	margin-left: auto;
	margin-right: auto;
}

tr:nth-child(even) {
	background-color: rgb(204, 255, 230);
}
tr:nth-child(odd){
	background-color: rgb(255, 230, 255);
}

th,td {
	text-align: center;
	font-weight: bold;
	text-decoration: blink;
	color: rgb(0, 0, 102);
	font-size: 20px;
	font-family: sans-serif;
	padding: 10px;
}


.inputs {
	text-align: center;
	border: 3px solid rgb(0, 0, 102);
	background-color: rgb(255, 255, 204);
	border-top-right-radius: 100px;
	border-bottom-left-radius: 100px;
}
</style>

</head>
<body>
	<h2 class="head">ALL REGISTRATIONS</h2>
	<table>
		<tr>
			<th>Name</th>
			<th>Father's Name</th>
			<th>Email</th>
			<th>Address</th>
			<th>Contact</th>
			<th>Update Here</th>
			<th>Delete Here</th>
		</tr>
		<%
		ResultSet res = (ResultSet) request.getAttribute("result");
		while (res.next()) {
		%>
		<tr>
			<td><%=res.getString(1)%></td>
			<td><%=res.getString(2)%></td>
			<td><%=res.getString(3)%></td>
			<td><%=res.getString(4)%></td>
			<td><%=res.getString(5)%></td>
			<td><a href="UpdateRegistration?name=<%=res.getString(1)%>&fathersName=<%=res.getString(2)%>&email=<%=res.getString(3)%>&address=<%=res.getString(4)%>&contact=<%=res.getString(5)%>">Update</a></td>
			<td><a href="DeleteRegistration?email=<%=res.getString(3)%>">Delete</a></td>
			<!-- No white space here allowed here-->
		</tr><%}
		%>
	</table>
</body>
</html>