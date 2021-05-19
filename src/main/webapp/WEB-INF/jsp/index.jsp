<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ page isELIgnored="false"%>
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

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
<link rel="stylesheet" href="css/formularios.css">
<link rel="stylesheet" href="css/retoques.css">

<!-- VUE -->
<script src="https://unpkg.com/vue@next"></script>
<script src="vue/encuestaVUE.js"></script>

<!-- AXIOS -->
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

</head>

<body>
	<!-- Por defecto siempre estará la web de Bienvenido, tiene opción en el Menú, pero también la carga el index.jsp -->
	<%@include file="../jsp/vistas/inicio/bienvenido.jsp"%>
</body>

</html>