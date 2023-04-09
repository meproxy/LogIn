<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrations</title>

<style type="text/css">
.menu {
	text-align: center;
	font-size: 25px;
	font-weight: bold;
	border-radius: 50px;
	padding: 10px;
	background-color: rgb(51, 133, 255);
	margin: 20px;
	border: 2px solid white;
}

.logout {
	text-align: center;
	background-color: red;
	color: white;
	font-size: 20px;
	font-weight: bold;
	border-radius: 50px;
	padding: 10px;
	padding-left: 20px;
	padding-right: 20px;
	border-top-right-radius: 20px;
	border-bottom-left-radius: 20px;
}

input.lo:hover {
	font-size: 19px;
	background-color: white;
	color: red;
	border: 2px solid black;
}

</style>
</head>
<body>
	<pre>


</pre>
	<div style="margin-top: 10px; text-align: center;">

		<a class="menu" href="saveReg"> NEW REGISTRATION</a> <a class="menu"
			href="list"> ALL REGISTRATIONS</a>

		<form style="text-align: right; margin-right: 20px;" action="logOut"
			method="post">
			<input class="logout lo" type="submit" value="LOG-OUT" />
		</form>
	</div>

</body>
</html>