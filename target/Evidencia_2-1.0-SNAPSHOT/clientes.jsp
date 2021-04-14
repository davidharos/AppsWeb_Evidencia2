<%@page import="java.util.List"%>
<%@page import="Model.Clients"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">


        <title>Bank Hammer</title>

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@700&display=swap" rel="stylesheet">
        <link href="../CSS/styles.css" rel="stylesheet">
        <link href="../CSS/menu.css" rel="stylesheet">
        <link href="../CSS/clientes.css" rel="stylesheet">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark static-top" style="background-color: #3b5998;">
            <div class="container">
                <a class="navbar-brand" href="<%=request.getContextPath()%>/Menu.jsp">
                    <img src="../img/Logo_Navbar.PNG" alt="Logo" style="max-height: 80px">
                </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-between ml-3" id="navbarResponsive">
                    <ul class="nav navbar-nav navbar-right ">
                        <li class="nav-item">
                            <a class="nav-link " href="<%=request.getContextPath()%>/Menu.jsp">Inicio

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="#">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active " href="<%=request.getContextPath()%>/clientes.jsp">Clientes</a>
                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right ">
                        <li class="nav-item">
                            <a class="nav-link" href="#"><p class="d-inline mb-0" style="margin-right: 10px">Salir </p> <i class="fas fa-sign-out-alt"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>




        <div class="container mt-3 mb-4">
            <h5 class="title-page text-center" >Catálogo de Clientes</h5>

            <div class="row mt-5">

                <c:forEach var="client" items="${clients}" >

                    <div class="col-md-3 col-sm-6">
                        <div class="user-card">
                            <div class="pic">
                                <img src="../img/user.png">
                            </div>
                            <div class="user-content">
                                <h3 class="title"><c:out value="${client.getName()}" /></h3>
                                <span class="post"><c:out value="${client.getIdClient()}" /></span>
                            </div>
                            <ul class="user-info">
                                <li><p><c:out value="${client.getCountry()}" /></p></li>
                                <li><p><c:out value="${client.getCity()}" /></p></li>
                            </ul>

                        </div>
                    </div>

                </c:forEach>
            </div>


        </div>





        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/a75f4cd3d7.js" crossorigin="anonymous"></script>

    </body>
</html>