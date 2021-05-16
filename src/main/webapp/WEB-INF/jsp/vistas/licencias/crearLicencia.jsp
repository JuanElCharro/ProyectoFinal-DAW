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
			<h1 class="display-4">Crear nueva licencia</h1>
			<p class="lead">Puede crear nuevas licencias para los programas.</p>
		</div>
	</div>
	
	<div class="container" style="margin-top: 30px">
		<div class="col-12">
			<div class="form-group">
				<form action="http://localhost:8080/libreApp/crearLicencias"
					method="post" id="formulario">
					
					<div class="row" hidden>
						<div class="col-12">
							<label for="id_licencia"></label> <input type="text"
								class="form-control" id="id_licencia" name="id_licencia">
						</div>
					</div>

					<div class="row">
						<div class="col-lg-6 col-sm-12">
							<label for="nombre_licencia"></label> Nombre de la nueva licencia: <input type="text"
								class="form-control" id="nombre_licencia" name="nombre_licencia" required>
						</div>
						<div class="col-lg-6 col-sm-12">
							<label for="descripcion"></label> Link a su texto: <input type="url"
								placeholder="Escriba la URL de la licencia..." class="form-control" id="descripcion" name="descripcion" required>
						</div>
					</div>

					<br> <input type="submit" class="btn btn-primary col-12"
						value="Insertar">
				</form>
				<hr>
				<c:if test="${resultado == 1}">
					<div id="tarjetasBienvenido" class="col-12">
						<div class="card text-white bg-success">
							<div class="card-body">
								<h3 class="card-title">Licencia insertada correctamente.</h3>
							</div>
						</div>
					</div>
				</c:if>
			</div>
		</div>
	</div>
	
	<%@include file="../../footer.html"%>
</body>
</html>