<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In</title>
<%@include file="components/css.jsp"%>

</head>
<body>
	<h2 class="head">
		<span
			style="color: rgb(51, 133, 255); font-size: 50px; font-family: sans-serif;">W</span>elcome
	</h2>
	<form action="verifyLogIn" method="post">
		<div class="clearfix" class="log">
			<table>
				<tr>
					<td style="font-size: 25px; padding-right: 0px">Email&nbsp;&nbsp;-</td>
					<td><input class="inputs" type="text" name="email" /></td>
				</tr>
				<tr>
					<td style="font-size: 25px; padding-right: 0px">Password&nbsp;&nbsp;-</td>
					<td><input class="inputs" type="password" name="password" /></td>
				</tr>
			</table>
		</div>
		<div style="text-align: center; margin: 40px;">
			<input class="login in" type="submit" value="LOGIN" />
		</div>
	</form>
	<div class="footer">
		<%
		if (request.getAttribute("error") != null) {
			out.println(request.getAttribute("error"));
		}
		%>
	</div>
	<%@include file="components/js.jsp"%>
</body>
</html>