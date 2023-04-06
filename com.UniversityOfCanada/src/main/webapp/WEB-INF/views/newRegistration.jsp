<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Registration</title>
<%@include file="/WEB-INF/INFcomponents/INFcss.jsp"%>

<style type="text/css">
body {
	background-color: rgb(255, 255, 153);
}

a:link , a:visited, a:active{
  color: white;
  background-color: rgb(0, 0, 102);
  text-decoration: none;
  padding: 10px;
  border-radius: 30px;
}

a:hover {
color: red;
}

.head {
	text-align: center;
	color: rgb(0, 0, 102);
	text-shadow: 2px 2px white;
	margin-top: 50px;
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

th, td {
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

.foot1 {
	text-align: center;
	background-color: rgb(0, 0, 102);
	color: white;
	font-size: 22px;
	font-weight: bold;
	border-radius: 50px;
	padding: 20px;
	border: 2px solid white;
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



.footer {
	text-align: center;
	color: rgb(255, 26, 26);
	font-weight: bold;
	font-size: 25px;
}
</style>


</head>
<body>
	<h2 class="head">New Registration</h2>
	<form action="saveReg" method="post">

		<table>
			<tr>
				<td>Name :</td>
				<td><input class="inputs" type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Father Name :</td>
				<td><input class="inputs" type="text" name="fathersName" /></td>
			</tr>
			<tr>
				<td>Email Id :</td>
				<td><input class="inputs" type="text" name="email" /></td>
			<tr>
				<td>Address :</td>
				<td><input class="inputs" type="text" name="address" /></td>
			<tr>
				<td>Contact No. :</td>
				<td><input class="inputs" type="text" name="contact" /></td>
			</tr>
		</table>
		<div style="text-align: center;">
			<input class="foot1" type="submit" value="Save" />
		</div>
	</form>
	<pre>
	</pre>
	<div style="text-align: center;">
		<form action="logOut" method="post">
			<input class="foot" type="submit" value="Log Out" />
		</form>
	</div>

	<div class="footer">
		<%
		if (request.getAttribute("msg") != null) {
			out.println(request.getAttribute("msg"));
		}
		%>
	</div>
	<%@include file="/WEB-INF/INFcomponents/INFjs.jsp"%>
</body>
</html>