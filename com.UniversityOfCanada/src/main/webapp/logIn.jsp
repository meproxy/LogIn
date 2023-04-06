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
		<span style="color: red">L</span>og <span style="color: red">I</span>n
	</h2>
	<form action="verifyLogIn" method="post">
		<div class="clearfix" class="log">
			<table>
				<tr>
					<td>User Name</td>
					<td><input class="inputs" type="text" name="email" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input class="inputs" type="password" name="password" /></td>
				</tr>
			</table>
			
		</div>
		<div style="text-align: center;  margin:40px;">
				<input style="text-align: center; background-color:rgb(0, 0, 102); color: white; font-size: 25px; font-weight: bold; border-radius: 50px; padding: 10px" type="submit" value="Log In" />
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