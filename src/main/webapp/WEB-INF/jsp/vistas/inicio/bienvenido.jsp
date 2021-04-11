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
                        <h3 id="center">BIENVENIDO A NUESTRA LIBRERIA DE SOFTWARE</h3>
                        <h5 id="center">Nuestra vision del software</h5>
                        <div id="mi-carrusel" class="carousel slide" data-ride="carousel">

                            <!-- Indicadores -->
                            <ul class="carousel-indicators">
                                <li data-target="#mi-carrusel" data-slide-to="0" class="active"></li>
                                <li data-target="#mi-carrusel" data-slide-to="1"></li>
                                <li data-target="#mi-carrusel" data-slide-to="2"></li>
                            </ul>
                    
                            <!-- Fotos del slide -->
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="carousel-caption d-block">
                                        <h4>Busque su programa favorito</h4>
                                        <p>En nuestra Base de Datos disponemos de un registro de Software</p>
                                    </div>
                                    <img src="media/Backlit_keyboard.jpg" width="1100" height="500" alt="">
                                </div>
                                <div class="carousel-item">
                                    <div class="carousel-caption d-block">
                                        <h4>Si lo desea puede colaborar</h4>
                                        <p>El codigo de cada proyecto es visible</p>
                                    </div>
                                    <img src="media/Software_Testing_Life_Cycle.jpg" width="1100" height="500" alt="">
                                </div>
                                <div class="carousel-item">
                                    <div class="carousel-caption d-block">
                                        <h4>Titulo de la Imagen</h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, possimus!</p>
                                    </div>
                                    <img src="https://www.fillmurray.com/1100/400" width="1100" height="500" alt="">
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
                        <p>Some text..</p>
                        <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit,
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                            quis nostrud exercitation ullamco.</p>
                        <br>
                    </div>
                </div>
            </div>

            <div class="jumbotron text-center" style="margin-bottom:0">
                <p>Actualmente v1.0.0</p>
                <p>2021 - Juan Garcia Hernandez</p>
            </div>
    </body>

    </html>