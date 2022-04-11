<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css\AS3.css"  >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />

<title>ADMIN PAGE</title>
</head>
<body>
<%@ page import="model.*" %>
<% String usr = (String) session.getAttribute("user");
   String[] separated = usr.split("@");
   String name = separated[0];
%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-2 left-admin">
				<h2>1849 TEAM</h2>
				<ul>
					<li>Welcome <%= name %>  </li>
					<li class="fas fa-bars"><a href="#">  DashBoard</a></li>
					<li class="fas fa-user-alt"><a href="#">  Staff Manager</a></li>
				</ul>
			</div>
			<div class="col-lg-10 right-admin">
				<div class="col-lg-12" style="position:relative;">
					<img src="media/wall.jpg" style="width:100%; height:450px;">
					<a class="top-right" href="LogOutController?logout=ok"><li class="fas fa-user-alt"></li> Log Out</a>
				</div>
				<div class="col-lg-8">
					<div class="col-lg-12 member">
					<h2>Member of the team</h2>
					</div>
					<div class="col-lg-12">
						<table class="table table-dark">
							<thead>
								<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Student ID</th>
								<th>Class</th>
								</tr>
							</thead>
							<tbody>
							<tr>
								<td>1</td>
								<td>Member 1</td>
								<td>Member Code 1</td>
								<td>Class 1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Member 2</td>
								<td>Member Code 2</td>
								<td>Class 2</td>
							</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>