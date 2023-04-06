<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Registration</title>
<%@include file="/WEB-INF/INFcomponents/INFcss.jsp"%>

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

tr:nth-child(odd) {
	background-color: rgb(255, 230, 255);
}

td {
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

.foot {
	text-align: center;
	background-color: rgb(0, 0, 102);
	color: white;
	font-size: 2opx;
	font-weight: bold;
	border-radius: 50px;
	padding: 10px;
	white-space: nowrap;
}
</style>

</head>
<body>
	<h2 class="head">Update Existing Registration</h2>
	<form action="UpdateRegistration" method="post">
		<table>
			<tr>
				<td>Name :</td>
				<td><input class="inputs" type="text" name="name"
					value="<%=request.getAttribute("name")%>" /></td>
			</tr>
			<tr>
				<td>Father Name :</td>
				<td><input class="inputs" type="text" name="fathersName"
					value="<%=request.getAttribute("fathersName")%>" /></td>
			</tr>
			<tr>
				<td>Email Id :</td>
				<td><input class="inputs" type="text" name="email"
					value="<%=request.getAttribute("email")%>" /></td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><input class="inputs" type="text" name="address"
					value="<%=request.getAttribute("address")%>" /></td>
			</tr>
			<tr>
				<td>Contact No. :</td>
				<td><input class="inputs" type="text" name="contact"
					value="<%=request.getAttribute("contact")%>" /></td>
			</tr>
		</table>
		<div style="text-align: center;">
		<input class="foot" type="submit" value="Update" />
		</div>
	</form>

	<div style="text-align: center;">
		<form action="logOut" method="post">
			<input class="foot" type="submit" value="LogOut" />
		</form>
	</div>

	<%@include file="/WEB-INF/INFcomponents/INFjs.jsp"%>
</body>
</html>