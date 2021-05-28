<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Vendor Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Manage Vendor </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Vendor Manage</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${Vendor != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${vendor == null}">
					<form action="insert" method="post">
				</c:if>

				<c:if test="${vendor != null}">
					<input type="hidden" name="id" value="<c:out value='${vendor.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Vendor Name</label> <input type="text"
						value="<c:out value='${vendor.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

                <fieldset class="form-group">
					<label>Phone No </label> <input type="text"
						value="<c:out value='${vendor.phnNo}' />" class="form-control"
						name="phnNo">
				</fieldset>

                <fieldset class="form-group">
					<label>Pancard </label> <input type="text"
						value="<c:out value='${vendor.pancard}' />" class="form-control"
						name="pancard">
				</fieldset>

				<fieldset class="form-group">
					<label>Address </label> <input type="text"
						value="<c:out value='${vendor.address}' />" class="form-control"
						name="address">
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<c:out value='${vendor.email}' />" class="form-control"
						name="email">
				</fieldset>


				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>