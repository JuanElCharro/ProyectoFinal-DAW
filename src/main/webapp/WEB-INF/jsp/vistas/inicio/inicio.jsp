<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


		<%@ page isELIgnored="false" %>

			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="ISO-8859-1">
				<meta name="viewport" content="width=device-width, initial-scale=1">

				<!-- BOOTSTRAP -->
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
				<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

				<!-- CSS -->
				<link rel="stylesheet" href="css/menu.css">
				<link rel="stylesheet" href="css/formularios.css">
				<link rel="stylesheet" href="css/retoques.css">

				<!-- VUE -->
				<script src="https://unpkg.com/vue@next"></script>
				<script src="vue/informacionVUE.js"></script>

				<!-- AXIOS -->
				<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

			</head>

			<body>
				<%@include file="../../menu.html" %>

					<div class="jumbotron jumbotron-fluid">
						<div class="container">
							<h1 class="display-4">Inicio</h1>
							<p class="lead">Infomacion sobre licencias, movimientos y
								organizaciones que promueven el Software Libre y el Open Source.</p>
						</div>
					</div>

					<div class="container" style="margin-top: 30px">
						<div class="row">
							<div class="col-xl-4">
								<h3>Tipos de Licencias</h3>
								<p>Lista de licencias libres y permitidas en verde, y privativas
									no permitidas en rojo, la idea es que sirva como guia para los
									usuarios</p>
								<ul class="nav nav-pills flex-column">
									<li class="nav-item"><a id="licenciasLibres" class="nav-link"
											href="https://www.gnu.org/licenses/gpl-3.0.html">GPLv2 o GPLv3</a>
									</li>
									<li class="nav-item"><br></li>
									<li class="nav-item"><a id="licenciasPrivativas" class="nav-link"
											href="https://docs.microsoft.com/en-us/plumbago/plumbagoapplicense">Microsoft
											EULA</a></li>
									<li class="nav-item"><br></li>
									<li class="nav-item"><a id="licenciasLibres" class="nav-link"
											href="https://apache.org/licenses/">Apache License</a></li>
									<li class="nav-item"><br></li>
									<li class="nav-item"><a id="licenciasPrivativas" class="nav-link"
											href="https://www.defectivebydesign.org/">Software con DRM</a></li>
									<li class="nav-item"><br></li>
									<li class="nav-item"><a id="licenciasLibres" class="nav-link"
											href="https://mit-license.org/">MIT license</a></li>
									<li class="nav-item"><br></li>
									<li class="nav-item"><a id="licenciasPrivativas" class="nav-link"
											href="https://www.ibm.com/support/pages/ibm-support-licensing-start-page">License
											Keys</a></li>
									<li class="nav-item"><br></li>
									<li class="nav-item"><a id="licenciasLibres" class="nav-link"
											href="https://www.mozilla.org/en-US/MPL/">Mozilla Public License</a></li>
								</ul>
								<hr>

								<div class="d-none d-xl-block">
									<h2>La Importancia de Colaborar en el Software</h2>
									<h5>Mi opinion sobre el uso y mejora de productos libres</h5>
									<p>Es importante el uso y desarrollo de programas libres en
										todos los campos profesionales, no solo por razones de seguridad o
										mejoras globales sobre los programas, sino igual porque facilita
										el soporte de los mismos.</p>
									<p>Del mismo modo hay que ayudar a entender a las empresas que
										ellas tampoco tendran problemas o perdidas al respecto por no
										poseer licencia exclusiva.</p>
									<hr>
								</div>

								<div class="col">
									<div class="card border-primary">
										<div class="card-body">
											<h3 class="card-title">Tecnologias usadas</h3>
											<p class="card-text">A continuacion muestro las tecnologias
												que he usado para construir esta web.</p>
											<a id="buttonCard" href="https://www.w3schools.com/Css/"
												class="btn btn-primary">CSS 3</a> <a id="buttonCard"
												href="https://www.w3schools.com/html/" class="btn btn-warning">HTML
												5</a> <a id="buttonCard" href="https://spring.io/projects/spring-boot"
												class="btn btn-dark">Spring Boot</a> <a id="buttonCard"
												href="https://adoptopenjdk.net/" class="btn btn-info">Java
												JDK</a> <a id="buttonCard" href="https://vuejs.org/"
												class="btn btn-success">Vue.js</a> <a id="buttonCard"
												href="https://nodejs.org/en/" class="btn btn-danger">Node.js</a>
											<a id="buttonCard" href="https://getbootstrap.com/"
												class="btn btn-secondary">Bootstrap</a>
										</div>
									</div>
								</div>
								<hr>

								<!-- CODIGO VUE, lo controla informacionVUE.js -->
								<div id="app">
									<h2>Calidad</h2>
									<h5>Valore la info mostrada en la web e indique lo que
										le gustaria cambiar o mejorar:</h5>
									<p>La infomacion mostrada es correcta:</p>
									<label class="contenedor">Si lo es <input type="radio" name="opt"
											v-model="respuestaInfo" value="Info Correcta">
										<span class="checkmark"></span>
									</label> <label class="contenedor">No lo es <input type="radio" name="opt"
											v-model="respuestaInfo" value="Info Incorrecta">
										<span class="checkmark"></span>
									</label> <label class="contenedor">Ns/Nc <input type="radio" name="opt"
											v-model="respuestaInfo" value="No sabe/No contesta">
										<span class="checkmark"></span>
									</label>
									<p>La infomacion le ha resultado util:</p>
									<label class="contenedor">Es de utilidad <input type="radio" name="opt2"
											v-model="respuestaUtilidad" value="Utilidad Correcta"> <span
											class="checkmark"></span>
									</label> <label class="contenedor">No es de utilidad <input type="radio" name="opt2"
											v-model="respuestaUtilidad" value="Utilidad Incorrecta"> <span
											class="checkmark"></span>
									</label> <label class="contenedor">Ns/Nc <input type="radio" name="opt2"
											v-model="respuestaUtilidad" value="No sabe/No contesta"> <span
											class="checkmark"></span>
									</label>
									<p>Problemas encontrados (opcional):</p>
									<textarea v-model="desarrollo" name="txarea" id="txarea" rows="5" maxlength="1000"
										placeholder="Desarrolle el/los problemas..."></textarea>
									<button id="enviarB" v-on:click="guardarFormulario(); reload();">Enviar</button>
								</div>
								<!-- CODIGO VUE FINALIZA -->
								<br>

							</div>
							<div class="col-xl-8 col-lg-9 col-sm-12">
								<h2>
									<a href="https://www.fsf.org/">Free Software Foundation (FSF)</a>
								</h2>
								<h5>Creadores del Sistema Operativo GNU/Linux y de las
									licencias GPL</h5>
								<video class="d-none d-md-block d-lg-block d-xl-block"
									id="separacion-imagentexto-inicio" controls="controls"
									poster="media/inicio/listen-half.jpg" width="720">
									<source src="media/inicio/Fight-to-Repair-720p.webm" type="video/webm">
									</source>
								</video>
								<p>
									La <strong> Free Software Foundation (FSF) </strong> es una
									organizacion sin animo de lucro cuyo objetivo es promocionar la
									libertad de las personas usuarias de computadoras, y defender los
									derechos de quienes usan software libre.
								</p>
								<p>
									El<strong> GNU es un sistema operativo de software libre </strong>,
									es decir, respeta la libertad de los usuarios. El sistema operativo
									GNU consiste en paquetes de GNU (programas publicados
									especificamente por el proyecto GNU), ademas de software libre
									publicado por terceras partes. El desarrollo de GNU ha permitido
									que se pueda utilizar un ordenador sin software que atropelle
									nuestra libertad.
								</p>
								<hr>
								<h2>
									<a href="https://opensource.org/"> Open Source Initiative (OSI)</a>
								</h2>
								<h5>Incentivan a las empresas a usar Software Libre y
									explicarles el beneficio</h5>
								<img class="d-none d-md-block d-lg-block d-xl-block" id="separacion-imagentexto-inicio"
									src="media/inicio/opensourceinitiative.png" alt="opensourceiniciative" width="720"
									height="400">
								<p>
									La <strong>Open Source Initiative </strong> (Iniciativa para el
									Codigo Abierto) es una organizacion dedicada a la promocion del
									codigo abierto. Fue fundada en febrero de 1998
								</p>
								<p>Un grupo de personas interesadas en el software libre y en
									GNU/Linux decidieron introducir un termino de mercadotecnia para el
									software libre, buscando posicionarlo como amigable para negocios y
									con menos carga ideologica en su competencia con el software
									propietario. Esto condujo a la creacion del termino Open Source
									(codigo abierto).</p>
								<hr>
								<h2>
									<a href="https://www.defectivebydesign.org/">Defective By
										Design</a>
								</h2>
								<h5>DefectiveByDesign es un movimiento anti-DRM</h5>
								<img class="d-none d-md-block d-lg-block d-xl-block" id="separacion-imagentexto-inicio"
									src="media/inicio/Eliminate_DRM.png" alt="opensourceiniciative" width="720"
									height="480">
								<p>
									<strong> DefectiveByDesign.org </strong> es un movimiento anti-DRM
									de base amplia cuyo objetivo son los grandes medios, los
									fabricantes y los distribuidores de DRM.
								</p>
								<p>Los grandes medios trataran de hacerte creer que DRM
									significa Gestion Digital de Derechos. Sin embargo, siendo que su
									proposito es restringirte a ti, el usuario, es mas apropiado
									describir DRM como Gestion Digital de Restricciones. Las
									tecnologias DRM pueden restringir el acceso del publico a
									peliculas, musica, literatura y software, por cierto, a toda forma
									de datos digitales.</p>
							</div>
						</div>
					</div>

					<%@include file="../../footer.html" %>
						<script>
							app.mount("#app");
						</script>
			</body>

			</html>