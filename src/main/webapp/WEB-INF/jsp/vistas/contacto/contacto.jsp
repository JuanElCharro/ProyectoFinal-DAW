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

            <div class="container" style="margin-top:30px" id="app">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="texto-bienvenido">
                            <h3 id="center">CONTACTO</h3>
                            <h5 id="center">Origen, autor, historia y proyecto. Gustos y vida en la programacion</h5>
                        </div>
                    </div>

                    <div class="d-none d-xl-block d-sm-block d-block col-12 col-sm-12 col-xl-4">
                        <div class="jumbotron mt-3">
                            <p class="lead mb-4" id="center">
                                <img id="fotoPerfil" src="media/contacto/foto.jpg" width="250" height="250"
                                    alt="mi-foto"> <br>
                                <strong>Juan Garcia Hernandez</strong> <br> <a
                                    href="https://www.viewnext.com/que-es-un-full-stack-developer/">Full Stack
                                    Developer</a>
                            </p>
                        </div>
                    </div>

                    <div class="col-xl-8 col-sm-12">
                        <div class="jumbotron mt-3">
                            <h3>Hola,</h3>
                            <p class="lead mb-4">
                                Mi nombre es Juan Garcia Hernandez. Entre muchos aspectos de mi vida soy
                                una persona alegre, con sentido del humor y con muchas ganas aprender siempre cosas
                                nuevas. Soy natural de Salamanca, me gusta el arte, la programacion, viajar, los
                                videojuegos y la musica. Vamos, por fuera como todo el mundo.
                                La musica Rock es sagrada y tambien tengo un gato.
                            </p>
                            <p class="lead mb-4">
                                La razon de la existencia de libreApp Library ha surgido como una inquietud
                                mia por dar a conocer y agrupar el acceso a gran parte de los proyectos de
                                informatica de alto nivel con licencias Copyleft y gratuitas.
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div class="jumbotron mt-3">
                            <h3>La Biblioteca,</h3>
                            <p class="lead mb-4">
                                Es un lugar donde quiero recoger todos los grandes proyectos de multiples campos
                                profesionales (programacion, ofimatica, imagen y sonido, edicion, retransmision,
                                bases de datos, utilidades, graficos, apredizaje, robotica etc) con las unicas
                                condiciones que sea Software con licencias libres y/o Open Source, y que sus proyectos
                                sean activos y no esten abandonados.
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-12 col-lg-6 col-xl-4">
                        <div class="jumbotron mt-3">
                            <p class="lead mb-4" id="center">
                                <img src="media/contacto/plus-icon.png" width="250" height="250" alt="plus-icon"
                                    v-on:click="irAgregarPrograma()">
                                <br> Puede agregar los programas que cumplan las condiciones
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-12 col-lg-6 col-xl-4">
                        <div class="jumbotron mt-3">
                            <p class="lead mb-4" id="center">
                                <img src="media/contacto/search-icon.png" width="250" height="250" alt="search-icon"
                                    v-on:click="irBuscarPrograma()">
                                <br> Puede buscar los programas que desee en nuestra BBDD
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-12 col-lg-12 col-xl-4">
                        <div class="jumbotron mt-3">
                            <p class="lead mb-4" id="center">
                                <img src="media/contacto/writer-icon.png" width="210" height="250" alt="write-icon"
                                    v-on:click="irBorrarPrograma()">
                                <br> Puede borrar el programa si queda desactualizado
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-12">
                        <div id="texto-bienvenido">
                            <h3 id="center">FEEDBACK</h3>
                            <h5 id="center">Puedes enviarme sugerencias, mejoras o bugs</h5>
                        </div>
                    </div>

                    <div class="col-sm-12 col-lg-5">
                        <div class="jumbotron mt-3">
                            <h3>Contacto:</h3>
                            <p class="lead mb-4">
                                Para evitar spam no muestro ningun correo, si deseas ponerte en contacto
                                conmigo para algo distinto a la funcionalidad de la web tienes la opcion
                                de rellenar el formulario, poner tu correo y seleccionar la opcion 'otro'
                            </p>
                        </div>
                        <div class="jumbotron mt-3">
                            <h3>Feedback:</h3>
                            <p class="lead mb-4">
                                Deseo recibir la mayor retroalimentacion posible de los usuarios de la web.
                                No hay compromiso, por lo que el correo es completamente opcional y no se
                                guardaran metadatos de nadie.
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-12 col-lg-7">
                        <!-- VUE -->
                        <div>
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
                                <textarea v-model="comentario" name="txarea" id="txarea" cols="30" rows="11"
                                    maxlength="1000" placeholder="Escriba aqui..."></textarea>
                                <div class="slidecontainer">
                                    <p>Grado de satisfaccion con la web:</p>
                                    <input v-model="satisfaccion" type="range" min="0" max="10" class="slider" step="1"
                                        id="slider-nota">
                                </div>
                                <button id="enviarB" v-on:click="guardar(); reload();">Enviar</button>
                            </div>
                        </div>

                        <!-- VUE -->
                    </div>
                    <br>
                </div>
            </div>
            <br>
            <%@include file="../../footer.html" %>
                <script>
                    app.mount("#app");
                </script>
    </body>

    </html>