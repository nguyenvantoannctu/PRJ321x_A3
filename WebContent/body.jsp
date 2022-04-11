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
<title>Home Page</title>
</head>
<body>
</br>
</br>
	<div class="container">
		<div class="row product">
		<c:forEach items="${listProducts}" var="pc"> 
			<div class="product-detail col-lg-3">
				<div class="img-product">
				<a href="DetailProduct?id=${pc.id}"><img src="${pc.src}" style="width:100%;"></a>
				</div>
				<h4>${pc.type}</h4>
				<b>${pc.name}</b>
				<br/>
				<h5>${pc.price}</h5>
			</div>
		</c:forEach>
		</div>
		</br>
		<div class="row paging">
		<div class="pagination col-lg-12">
	  		<a href="#">&laquo;</a>
	  		<a href="#">1</a>
	  		<a href="#">2</a>
	  		<a href="#">3</a>
	  		<a href="#">4</a>
	  		<a href="#">5</a>
	  		<a href="#">6</a>
	  		<a href="#">7</a>
	  		<a href="#">8</a>
	  		<a href="#">9</a>
	  		<a href="#">10</a>
	  		<a href="#">11</a>
	  		<a href="#">12</a>
	  		<a href="#">13</a>
	  		<a href="#">14</a>
	  		<a href="#">15</a>
	  		<a href="#">16</a>
	  		<a href="#">17</a>
	  		<a href="#">18</a>
	  		<a href="#">&raquo;</a>
		</div>
		</div>
	

	</div>
</body>
</html>