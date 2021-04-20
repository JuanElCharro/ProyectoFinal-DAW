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

                <!-- VUE -->
                <script src="https://unpkg.com/vue@next"></script>
                <script src="vue/encuestaVUE.js"></script>

                <!-- AXIOS -->
                <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

            </head>

            <body>
                <%@include file="../../menu.html" %>

                    <div class="container" style="margin-top:30px">
                        <div class="row">
                            <div class="col-sm-4">
                                <h3>Referencias</h3>
                                <p>etcetcetc.</p>
                                <ul class="nav nav-pills flex-column">
                                    <li class="nav-item">
                                        <a class="nav-link active" href="#">Active</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Link</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Link</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link disabled" href="#">Disabled</a>
                                    </li>
                                </ul>

                                <h2>About Me</h2>
                                <h5>Photo of me:</h5>
                                <div class="fakeimg">Fake Image</div>
                                <p>Some text about me in culpa qui officia deserunt mollit anim..</p>

                                <hr class="d-sm-none">
                            </div>
                            <div class="col-sm-8">
                                <h2>TITLE HEADING</h2>
                                <h5>Title description, Dec 7, 2017</h5>
                                <div class="fakeimg">Fake Image</div>
                                <p>Some text..</p>
                                <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing
                                    elit, sed do
                                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                    quis
                                    nostrud
                                    exercitation ullamco.</p>
                                <br>
                                <h2>TITLE HEADING</h2>
                                <h5>Title description, Sep 2, 2017</h5>
                                <div class="fakeimg">Fake Image</div>
                                <p>Some text..</p>
                                <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing
                                    elit, sed do
                                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                    quis
                                    nostrud
                                    exercitation ullamco.</p>
                            </div>
                        </div>
                    </div>

                    <%@include file="../../footer.html" %>
            </body>

            </html>