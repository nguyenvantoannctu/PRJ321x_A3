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
<%
	Cookie[] listCookie = request.getCookies();
	String user = "";
	String password ="";
	int co = 0;
	if(listCookie != null){
		while(co < listCookie.length){
			if(listCookie[co].getName().equals("user")){
				user = listCookie[co].getValue();
			}
			if(listCookie[co].getName().equals("password")){
				password = listCookie[co].getValue();
			}
			co++;
		}
	}
%>
		<div class ="row login">
			<div class="left-login col-lg-6">
				<h2>Sign In</h2>
				<form method="post" action="LoginController">
					<input type="text" name="user" value= "<%out.print(user); %>">
					<input type="password" name="pass" value ="<%out.print(password);%>">
					<label>
      					<input type="checkbox" name="remember"> Remember me
    				</label>
					<a href ="#">Forgot your password? </a>
					<a href="signin.jsp">Register</a>
					<input class="btn btn-danger" type="submit" value = "Login">
					<p style="color:red;">${error}</p>
				</form>
			</div>
			<div class="right-login col-lg-6">
				<h2>Welcome Back!</h2>
				<p>To keep connected with us please login with your personal info.</p>
			</div>
		
		</div>
	</div>
</body>
</html>