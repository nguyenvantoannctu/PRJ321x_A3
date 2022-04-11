<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css\AS3.css"  >
</head>
<body>
		<div class ="row login">
			<div class="left-login col-lg-6">
				<h2>Sign UP</h2>
				<form method="post" action="SignUpController">
					<input type="text" name ="username" placeholder="User Name">
					<input type="text" name="user" placeholder="Email address">
					<input type="password" name="pass" placeholder="passsword">
					<input type="password" name="repeatPass" placeholder="repeat-password">
					<input type="hidden" name="accountRole" value="1">
					<a href="login.jsp">Already have an account? Login here!</a>
					<input class="btn btn-danger" type="submit" value = "Sign Up">
					<p style="color:red;">${error}</p>
				</form>
			</div>
			<div class="right-login col-lg-6">
				<h2>Welcome to Our Store!</h2>
				<p>Being a member will have many vouncher for ya.</p>
			</div>
		
		</div>
	</div>
</body>
</html>