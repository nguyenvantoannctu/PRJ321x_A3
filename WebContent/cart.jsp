<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="header.jsp"></c:import>
	<br><br>
	<br><br>
	<div class="container-fluid">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Quatity of products in cart:
						${sessionScope.cart.getTotalProduct()}</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${sessionScope.cart.getItems()}" var="p">
					<tr>
						<td>${p.getName()}- ID:${p.getId()}</td>
						<td>($) ${p.price}</td>
						<td>
							<form action="EditNumber?id=${p.id}&action=add" method="post">
								<input name="number" type="number" value="${p.number}" size="3">
								<button type="submit">OK</button>

							</form>
						</td>
						<td>${p.getTotalPrice()}$</td>
						<td>
							<form action="InsertCart?id=${p.id}&action=delete"
								method="post">
								<button type="submit" class="btn btn-warning">Delete</button>
							</form>
						</td>
					</tr>
				</c:forEach>
                <tr>
                    <td colspan="4" style="text-align: right;">Total ${sessionScope.cart.getAmount()} $</td>
                </tr>

			</tbody>
		</table>
		<form action="Pay" class="submitCart" method="post">
                <p>Customer name</p>
                <input type="text" name="name" id="" required><br>
                <p>Customer address</p>
                <input type="text" name="address" id="" required><br>
                <p>Discount code(if any)</p>
                <input type="text" name="discount" id=""><br>
                <button style="margin-top: 10px;" type="submit" class = "btn btn-primary">Submit</button>
            </form>
	</div>

	<c:import url="footer.jsp"></c:import>
</body>
</html>