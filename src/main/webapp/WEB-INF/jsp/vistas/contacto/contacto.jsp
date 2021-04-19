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
        <link rel="stylesheet" href="css/formularios.css">

        <!-- VUE -->
        <script src="https://unpkg.com/vue@next"></script>
        <script src="vue/incidenciasVUE.js"></script>

        <!-- AXIOS -->
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    </head>

    <body>
        <%@include file="../../menu.html" %>

            <div class="container" style="margin-top:30px">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="texto-bienvenido">
                            <h3 id="center">Quien Soy</h3>
                            <h5 id="center">Me llamo Juan Garcia Hernandez</h5>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="jumbotron mt-3">
                            <p class="lead mb-4">
                                <img src="media/foto.jpg" width="280" height="280" alt="mi-foto">
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-8">
                        <div class="jumbotron mt-3">
                            <p>Texto:</p>
                            <p class="lead mb-4">
                                texto texto texto texto texto texto texto texto texto texto texto texto
                                texto texto texto texto texto texto texto texto texto texto texto texto
                                texto texto texto texto texto texto texto texto texto texto texto texto
                                texto texto texto texto texto texto texto texto texto texto texto texto
                                texto texto texto texto texto texto texto texto texto texto texto texto
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="jumbotron mt-3">
                            <p>Texto:</p>
                            <p class="lead mb-4">
                                texto texto texto texto texto texto texto texto texto texto texto texto
                                texto texto texto texto texto texto texto texto texto texto texto texto
                                texto texto texto texto texto texto texto texto texto texto texto texto
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div id="texto-bienvenido">
                            <h3 id="center">Contacta conmigo</h3>
                            <h5 id="center">Puedes enviarme sugerencias, mejoras o bugs</h5>
                        </div>
                    </div>

                    <div class="col-sm-5">
                        <div class="jumbotron mt-3">
                            <p>Texto:</p>
                            <p class="lead mb-4">
                                texto texto texto texto texto texto texto texto texto texto texto texto
                                texto texto texto texto texto texto texto texto texto texto texto texto
                            </p>
                        </div>
                        <div class="jumbotron mt-3">
                            <p>Texto:</p>
                            <p class="lead mb-4">
                                texto texto texto texto texto texto texto texto texto texto texto texto
                                texto texto texto texto texto texto texto texto texto texto texto texto
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-7">
                        <!-- VUE -->
                        <div id="app">
                            <h2>Incidencias</h2>
                            <div class="form">
                                <label>Tipo de incidencia:</label>
                                <select v-model="nombre">
                                    <option v-for="(incidencia, index) in incidencias" :key="incidencia">
                                        {{incidencia.nombre}}</option>
                                </select>
                                <label>Correo de contacto (opcional): </label>
                                <input v-model="correo" type="email" id="email" name="email"
                                    placeholder="email@direccion.com">
                                <label>Desarrolle la sugerencia: </label>
                                <textarea v-model="comentario" name="txarea" id="txarea" cols="30" rows="10" maxlength="900"
                                    placeholder="Desarrolle la incidencia..."></textarea>
                                <button id="enviarB" v-on:click="guardar(); reload();">Enviar</button>
                            </div>
                        </div>
                        <script>
                            app.mount("#app");
                        </script>
                        <!-- VUE -->
                    </div>
                    <br>
                </div>
            </div>
            <br>
            <%@include file="../../footer.html" %>
    </body>

    </html>