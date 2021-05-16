<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<!-- BOOTSTRAP -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="css/menu.css">

</head>

<body>
	<%@include file="../../menu.html"%>

	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="display-4">Licencias Disponibles</h1>
			<p class="lead">A continuacion se muestran las licencias Open Source y Software Libre referenciadas.</p>
		</div>
	</div>

	<div class="container" style="margin-top: 30px">
		<div class="col-12">
			<div class="list-group">
				<div class="row">
					<div class="col-12">
						<c:forEach items="${listaLicencias}" var="licencias">
							<div class="list-group-item list-group-item" value="${licencias.id}">
							 <h5> <span class="badge badge-primary badge-pill">${licencias.id}</span> ${licencias.descripcion}</h5>
							 </div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>

	<%@include file="../../footer.html"%>
</body>

</html>