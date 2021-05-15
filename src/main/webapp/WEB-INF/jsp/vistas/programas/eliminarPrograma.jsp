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
			<h1 class="display-4">Eliminar una App del registro</h1>
			<p class="lead">Elimine un programa de la base de datos.</p>
		</div>
	</div>

	<div class="container" style="margin-top: 30px">
		<div class="col-12">
			<div class="form-group">
				<form
					action="http://localhost:8080/libreApp/formularioEliminarPrograma"
					method="post" id="formulario">

					<div class="row" hidden>
						<div class="col-12">
							<label for="id_app"></label> <input type="text"
								class="form-control" id="id_app" name="id_app">
						</div>
					</div>

					<div class="row">
						<div class="col-12">
							<label for="nombre_app">Nombre:</label> <input type="text"
								class="form-control" id="nombre_app" name="nombre_app"
								placeholder="Introduzca el nombre del programa a borrar, por favor..."
								maxlength="45">
						</div>
					</div>

					<div class="row" hidden>
						<div class="col-6">
							<label for="version">Version del programa:</label> <input
								type="text" class="form-control" id="version" name="version"
								placeholder="Introduzca una version..." maxlength="5">
						</div>
						<div class="col-6">
							<label for="fecha">Fecha:</label> <input type="date"
								class="form-control" id="fecha" name="fecha">
						</div>
					</div>

					<div class="row" hidden>
						<div class="col-6">
							<label for="link_imagen">Link de la imagen:</label> <input
								type="url" class="form-control" id="link_imagen"
								name="link_imagen" placeholder="https://www...." maxlength="45">
						</div>
						<div class="col-6">
							<label for="link_descarga">Link de descarga:</label> <input
								type="url" class="form-control" id="link_descarga"
								name="link_descarga" placeholder="https://www...."
								maxlength="45">
						</div>
					</div>

					<div class="row" hidden>
						<div class="col-12">
							<label for="descripcion">Descripcion:</label>
							<textarea class="form-control" name="descripcion"
								id="descripcion" rows="3"
								placeholder="Breve descripcion del programa..." maxlength="500"></textarea>
						</div>
					</div>

					<br> <input type="submit" class="btn btn-primary col-12"
						value="Buscar">
				</form>
				<hr>

				<div class="row">
					<c:forEach items="${lista}" var="programa">
						<div class="col-12 col-md-6 col-lg-4">

							<form action="http://localhost:8080/libreApp/eliminarPrograma"
								method="post" id="formulario">
								<div class="card bg-light border-danger"
									style="margin-bottom: 1em;">
									<div style="text-align: center;">
										<img src="${programa.link_imagen}" style="margin-top: 1em;"
											width="100" height="100" alt=" ">

									</div>
									<div class="card-body">
										<h5 class="card-title">
											<strong>${programa.nombre_app}</strong>
										</h5>
										<!-- Recoger ID para borrarlo -->
										<input hidden type="text" id="id_app" name="id_app"
											value="${programa.id_app}" readonly>

										<p hidden class="card-text">${programa.descripcion}</p>
									</div>
									<ul class="list-group list-group-flush">
										<li class="list-group-item"><strong>Version:</strong>
											${programa.version}</li>
										<li class="list-group-item"><strong>Fecha:</strong>
											${programa.fecha}</li>
									</ul>
									<a hidden href="${programa.link_descarga}"
										class="btn btn-success">Descarga</a> <input type="submit"
										class="btn btn-danger" value="Borrar">
								</div>
							</form>
						</div>
					</c:forEach>
					<hr>
				</div>

				<c:if test="${resultado == 1}">
					<div id="tarjetasBienvenido" class="col-12">
						<div class="card text-white bg-danger">
							<div class="card-body">
								<h3 class="card-title">Programa eliminado correctamente.</h3>
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