<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<!-- BOOTSTRAP -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

		<!-- CSS -->
		<link rel="stylesheet" href="css/menu.css">

	</head>

	<body>
		<%@include file="../../menu.html" %>

			<div class="jumbotron jumbotron-fluid">
				<div class="container">
					<h1 class="display-4">Crear entrada de App</h1>
					<p class="lead">Usted puede crear un nuevo registro de un programa desde esta pantalla.
					</p>
				</div>
			</div>

			<div class="container" style="margin-top:30px">
				<div class="col-12">
					<div class="form-group">
						<form action="http://localhost:8080/libreApp/crearPrograma" method="post" id="formulario">

							<div class="row">
								<div class="col-6">
									<label for="id_app">Id:</label>
									<input type="text" class="form-control" id="id_app" name="id_app">
								</div>
								<div class="col-6">
									<label for="nombre_app">Nombre:</label>
									<input type="text" class="form-control" id="nombre_app" name="nombre_app">
								</div>
							</div>

							<div class="row">
								<div class="col-6">
									<label for="version">Version del programa:</label>
									<input type="text" class="form-control" id="version" name="version">
								</div>
								<div class="col-6">
									<label for="fecha">Fecha ultima version:</label>
									<input type="date" class="form-control" id="fecha" name="fecha">
								</div>
							</div>

							<label for="link_imagen">Link de la imagen:</label>
							<input type="text" class="form-control" id="link_imagen" name="link_imagen">
							<label for="link_descarga">Link de descarga:</label>
							<input type="text" class="form-control" id="link_descarga" name="link_descarga">

							<div class="form-group">
								<label for="descripcion">Descripcion:</label>
								<textarea class="form-control" id="descripcion" rows="3"></textarea>
							</div>

							<div class="row">
								<div class="col-6">Categoria de la App:
									<select class="form-control" name="categorias" form="formulario">
										<c:forEach items="${listaCategorias}" var="categorias">
											<option value="${categorias.id}"> ${categorias.nombre} </option>
										</c:forEach>
									</select>
								</div>
								<div class="col-6">Tipo de licencia:
									<select class="form-control" name="licencias" form="formulario">
										<c:forEach items="${listaLicencias}" var="licencias">
											<option value="${licencias.id}"> ${licencias.descripcion} </option>
										</c:forEach>
									</select>
								</div>
							</div>
							<br>
							<input type="submit" class="btn btn-primary col-12" value="Guardar registro">
							<hr>
							<c:if test="${resultado == 1}">
								<h2>App insertada correctamente</h2>
							</c:if>
					</div>
				</div>

			</div>

			<%@include file="../../footer.html" %>
	</body>

	</html>