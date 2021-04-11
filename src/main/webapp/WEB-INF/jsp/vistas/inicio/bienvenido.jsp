<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
    </head>

    <body>
        <%@include file="../../menu.html" %>

            <div class="container" style="margin-top:30px">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="texto-bienvenido">
                            <h3 id="center">BIENVENIDO A NUESTRA LIBRERIA DE SOFTWARE</h3>
                            <h5 id="center">Le deseamos una agradable experiencia en nuestra web</h5>
                        </div>

                        <div id="mi-carrusel" class="carousel slide" data-ride="carousel">

                            <ul class="carousel-indicators">
                                <li data-target="#mi-carrusel" data-slide-to="0" class="active"></li>
                                <li data-target="#mi-carrusel" data-slide-to="1"></li>
                                <li data-target="#mi-carrusel" data-slide-to="2"></li>
                            </ul>

                            <div class="carousel-inner">

                                <div class="carousel-item active">
                                    <div class="carousel-caption d-block">
                                        <h4>Investigue en nuestra web</h4>
                                        <p>Encuentre el programa que mas se adapta a sus necesidades</p>
                                    </div>
                                    <img src="media/ComputerProgrammer.jpg" width="1110" height="600" alt="">
                                </div>
                                <div class="carousel-item">
                                    <div class="carousel-caption d-block">
                                        <h4>Busque su programa favorito</h4>
                                        <p>En nuestra Base de Datos disponemos de un registro de Software</p>
                                    </div>
                                    <img src="media/Backlit_keyboard.jpg" width="1110" height="600" alt="">
                                </div>
                                <div class="carousel-item">
                                    <div class="carousel-caption d-block">
                                        <h4>Si lo desea puede colaborar</h4>
                                        <p>El codigo de cada app es visible en su repositorio</p>
                                    </div>
                                    <img src="media/Software_Testing_Life_Cycle.jpg" width="1110" height="600" alt="">
                                </div>
                            </div>

                            <a class="carousel-control-prev" href="#mi-carrusel" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#mi-carrusel" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>

                    <div class="col-sm 4" id="texto-bienvenido">
                        <div class="row">
                            <h2>Cual es nuestra filosofia:</h2>
                            <p>
                                Crear una web en la cual cada usuario pueda anadir registros de software con licencias
                                libres
                                u Open Source (GPLv2, GPLv3, CC (Creative Commons), MPL (Mozilla Public License), MIT
                                license, etc),
                                con sus correspondientes datos, informacion y registros a sus URLs oficiales.
                                Pretendiendo
                                asi
                                crear un espacio de recopilacion para los usuarios, sean del campo profesional que sean.
                            </p>
                            <br>
                            <h2>Encuesta para programadores:</h2>
                            <div class="form">
                                <form action="http://localhost:8080/libreApp/encuestalenguaje" method="post"
                                    id="formulario">
                                    <label>Lenguaje de programacion favorito:</label>
                                    <select name="lenguajes" form="formulario">
                                        <c:forEach items="${listaLenguajes}" var="lenguaje">
                                            <option value="${lenguaje.id}"> ${lenguaje.descripcion} </option>
                                        </c:forEach>
                                    </select>
                                    <label for="razon">Breve razon de su eleccion:</label>
                                    <input type="text" id="razon" name="razon" placeholder="Lo mas breve posible..">
                                    <input type="submit" value="Enviar">
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm 8">

                        <div class="col">
                            <div class="jumbotron mt-3">
                                <p class="lead mb-4">"Cuando me preguntan cuando estara listo un programa, contesto:
                                    depende de cuanto
                                    trabajes en ello."</p>
                                <p id="right">- Richard Stallman</p>
                            </div>
                        </div>

                        <div class="col">
                            <div class="jumbotron mt-3">
                                <p class="lead mb-4">"Mas alla de la aptitud matematica basica, la diferencia entre
                                    los buenos programadores y los grandes programadores es la habilidad verbal."
                                </p>
                                <p id="right">- Marissa Mayer</p>
                            </div>
                        </div>

                    </div>
                    <br>
                </div>
            </div>

            <div class="jumbotron text-center" style="margin-bottom:0">
                <p>Actualmente v1.0.0</p>
                <p>2021 - Juan Garcia Hernandez</p>
            </div>
    </body>

    </html>