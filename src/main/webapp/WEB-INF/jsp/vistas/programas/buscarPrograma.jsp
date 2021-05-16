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
			<h1 class="display-4">Buscar una App</h1>
			<p class="lead">Encuentre el programa que se adapta a tus
				necesidades.</p>
		</div>
	</div>

	<div class="container" style="margin-top: 30px">
		<div class="col-12">
			<div class="form-group">
				<form action="http://81.37.154.73:8080/libreApp/buscarPrograma"
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
								placeholder="Nombre de la App..." maxlength="45">
						</div>
					</div>

					<div class="row">
						<div class="col-6">
							<label for="version">Version:</label> <input
								type="text" class="form-control" id="version" name="version"
								placeholder="Introduzca una version..." maxlength="5">
						</div>
						<div class="col-6">
							<label for="fecha">Fecha:</label> <input type="date"
								class="form-control" id="fecha" name="fecha">
						</div>
					</div>

					<!-- Elementos ocultos que recogen datos para buscar -->
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
					
					<div class="row">
						<div class="col-12">
							<label for="categorias">Categoria de la App:</label>
							<select
								class="form-control" name="categorias" form="formulario">
								<c:forEach items="${listaCategorias}" var="categorias">
									<option value="${categorias.id}">
										${categorias.descripcion}</option>
								</c:forEach>
							</select>
						</div>
					</div>

					<br> <input type="submit" class="btn btn-primary col-12"
						value="Buscar">
				</form>
				<hr>

				<!-- Bucle que recorre y muestra los resultados -->
				<div class="row">
					<c:forEach items="${lista}" var="programa">
						<div class="col-12 col-md-6 col-lg-4">
							<div class="card bg-light" style="margin-bottom: 1em;">
								<div style="text-align: center;">
									<img src="${programa.link_imagen}" style="margin-top: 1em;"
										width="100" height="100" alt=" ">
								</div>
								<div class="card-body">
									<h5 class="card-title">
										<strong>${programa.nombre_app}</strong>
									</h5>
									<p class="card-text">${programa.descripcion}</p>
								</div>
								<ul class="list-group list-group-flush">
									<li class="list-group-item"><strong>Version:</strong>
										${programa.version}</li>
									<li class="list-group-item"><strong>Fecha:</strong>
										${programa.fecha}</li>
									<li class="list-group-item"><strong>Categoria:</strong> 
										<c:forEach
											items="${listaCategorias}" var="categorias">
											<c:if test="${categorias.id == programa.id_categoria}">
												${categorias.descripcion}
											</c:if>
										</c:forEach>
									</li>
								</ul>
								<a href="${programa.link_descarga}" class="btn btn-success">Descarga</a>
							</div>
						</div>
					</c:forEach>
				</div>

			</div>
		</div>

	</div>

	<%@include file="../../footer.html"%>
</body>

</html>