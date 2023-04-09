<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Registrations</title>
<%@include file="/WEB-INF/INFcomponents/INFcss.jsp"%>
<style type="text/css">
body {
	background-color: rgb(255, 204, 0);
}

.head {
	text-align: center;
	margin-top: 10px;
	margin-bottom: 50px;
	font-weight: bold;
	font-size: 45px;
	font: lighter;
	letter-spacing: 2px;
}

.log {
	align-content: center;
	}

table {
	border: 7px solid black;
	margin: 20px;
	font-size: 20px;
	margin-left: auto;
	margin-right: auto;
	border-collapse: collapse;
}

th {
	font-size: 30px;
	padding: 10px;
	pointer-events: none;
}

tr:nth-child(even) {
	background-color: rgb(51, 133, 255);
}

tr:nth-child(odd) {
	background-color: rgb(255, 204, 0);;
}

td {
	text-align: center;
	font-weight: bold;
	text-decoration: blink;
	font-size: 20px;
	padding: 15px;
	padding-left: 25px;
	padding-right: 25px;
	font: lighter;
}

a:link , a:visited, a:active{
color: white;
background-color: rgb(51,133,255);
text-decoration: none;
}

a:hover{
	font-size: 25.5px;
	color: rgb(51,133,255);
	background-color: white;
	border: 1px solid black;
}

a.ud:link , a.ud:visited, a.ud:active{
  color: black;
  background-color: white;
  text-decoration: none;
  padding: 10px;
  border-radius: 30px;
  border: 1px solid black;
  letter-spacing: 2px;
  font-size: 12px;
  font-weight: bold;
}

a.ud:hover {
color: red;
background-color: rgb(255, 204, 0);
font-size: 16px;
}

tr:hover {
	background-color: white;
}

.inputs {
	text-align: center;
	border: 3px solid rgb(0, 0, 102);
	background-color: rgb(255, 255, 204);
	border-top-right-radius: 100px;
	border-bottom-left-radius: 100px;
}

.foot {
	text-align: center;
	background-color: red;
	color: white;
	font-size: 20px;
	font-weight: bold;
	border-radius: 50px;
	padding: 10px;
	padding-left: 20px;
	padding-right: 20px;
	border: 2px solid white;
}

.but {
	
}

</style>

</head>
<body>
	<h2 class="head"><span style="color: rgb(51, 133, 255)">A</span>ll <span style="color: rgb(51, 133, 255)">R</span>egistrations</h2>
	<div style="overflow-y:auto;">
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
			<td style="font-size: 15px"><a  class="ud but" href="UpdateRegistration?name=<%=res.getString(1)%>&fathersName=<%=res.getString(2)%>&email=<%=res.getString(3)%>&address=<%=res.getString(4)%>&contact=<%=res.getString(5)%>">UPDATE</a></td>
			<td style="font-size: 15px"><a class="ud but" href="DeleteRegistration?email=<%=res.getString(3)%>">DELETE</a></td>
			<!-- No white space here allowed here-->
		</tr><%}
		%>
	</table>
	</div>
</body>
</html>