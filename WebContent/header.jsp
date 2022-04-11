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
<title>Header</title>
</head>
<body>
<div class="container-fluid">
	<header class="row">
		<div class="header-left col-lg-2">
			<h3>PRJ321x</h3>
			<a href="${pageContext.request.contextPath}/home.jsp">Welcome to my website</a>
		</div>
		<div class="header-right col-lg-10">
			<div class="selected">
				<form action="Search" method="post">
				<select class = "catagories col-lg-2 custom-select custom-select-sm">
					<option selected value="NULL">Categories</option>
					<option value="iphone">iphone</option>
					<option value="samsung">samsung</option>
					<option value="nokia">nokia</option>
				</select>
				<input class="col-lg-6 form-control" type="text" name ="search" placeholder="What are you looking for?" />
				<input type="submit" value="Search" class="btn btn-light" style="background-color:#eeeeee">
				</form>
				
			</div>
		</div>
	</header>
	<nav class="row">
		<ul>
			<li><a class="navbar-brand" href="${pageContext.request.contextPath}/home.jsp">Home</a></li>
			<li><a class="navbar-brand" href="${pageContext.request.contextPath}/ListProduct">Products</a></li>
			<li><a class="navbar-brand" href="#">About us</a></li>
			<li style="float:right"><a class="navbar-brand" href="${pageContext.request.contextPath}/signin.jsp">Register</a></li>
			<li style="float:right"><a class="navbar-brand" href="${pageContext.request.contextPath}/login.jsp">Login</a></li>
			
		</ul>

	</nav>
</div>


 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript --> 
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</body>
</html>