<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.css"
	rel="stylesheet" />
</head>
<body>

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.11.0/mdb.min.js"></script>
<c:import url="header.jsp"></c:import>
	<div class="container">
		<!--Main layout-->
		<main class="mt-5 pt-4">
			<div class="container dark-grey-text mt-5">

				<!--Grid row-->
				<div class="row wow fadeIn">

					<!--Grid column-->
					<div class="col-md-6 mb-4">

						<img src="${detail.src}" class="img-fluid" alt="">

					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-md-6 mb-4">

						<!--Content-->
						<div class="p-4">
							<p class="lead">
								<h4 style="color: navy;">${detail.name}</h4>
								</span> <span style="color: red;">${detail.price}$</span>
							</p>
							

							<p class="lead font-weight-bold">Description</p>

							<p>${detail.description}</p>

							<form method="post" class="d-flex justify-content-left" action="InsertCart?id=${detail.id}&action=add">
								<!-- Default input -->
								<input type="number" name="num" value="1" aria-label="Search"
									class="form-control" style="width: 100px">
								<button class="btn btn-primary btn-md my-0 p"
									type="submit">
									Add to cart <i class="fas fa-shopping-cart ml-1"></i>
								</button>

							</form>

						</div>
						<!--Content-->

					</div>
					<!--Grid column-->

				</div>

				<!--Grid row-->
				<div class="row d-flex justify-content-center wow fadeIn"></div>
	</div>
	</main>
	</div>
<c:import url="footer.jsp"></c:import>

</body>
</html>