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


tr:nth-child(even) {
	background-color: rgb(51,133,255);
}

tr:nth-child(odd) {
	background-color: rgb(255, 204, 0);
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

tr:hover {
	background-color: white;
}

.inputs {
	text-align: center;
	border: 2px solid black;
	border-radius: 50px;
	color: black;
}

.foot1 {
	text-align: center;
	background-color: rgb(51,133,255);
	color: white;
	font-size: 22px;
	font-weight: bold;
	border-radius: 50px;
	padding: 10px;
	padding-left: 20px;
	padding-right: 20px;
	border: 2px solid white;
	margin-top: 20px;
}

input.s:hover {
	color: red;
	background-color: white;
	border: 1px solid black;
	font-size: 23px;
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


.footer {
	text-align: center;
	color: rgb(255, 26, 26);
	font-weight: bold;
	font-size: 25px;
}
</style>


</head>
<body>
	<h2 class="head"><span style="color: rgb(51, 133, 255)">N</span>ew <span style="color: rgb(51, 133, 255)">R</span>egistration</h2>
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
			<input class="foot1 s" type="submit" value="SAVE" />
		</div>
	</form>
	
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