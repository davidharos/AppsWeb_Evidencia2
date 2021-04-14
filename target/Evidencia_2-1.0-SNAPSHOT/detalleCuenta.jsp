<%@page import="java.util.List"%>
<%@page import="Model.Accounts"%>
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
                            <a class="nav-link active" href="#">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="<%=request.getContextPath()%>/clientes.jsp">Clientes</a>
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
            <h5 class="title-page text-center" >Detalle de cuentas</h5>
            <a href="nuevaCuenta.jsp" class="btn btn-secondary mt-3">Nueva Cuenta</a>
            <div class="col-lg-12 mt-4 mt-lg-4">
                <div class="row">
                    <div class="col-md-12">
                        <div class="user-dashboard-info-box table-responsive mb-0 bg-white p-4 shadow-sm">
                            
                            <table class="table manage-candidates-top mb-0">
                                <thead>
                                    <tr>
                                        <th>Lista de cuentas</th>

                                        <th class="action text-center">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <c:forEach var="account" items="${accounts}" >
                                        
                                        <tr class="candidates-list">
                                            <td class="title">
                                                <div class="thumb">
                                                    <img class="img-fluid" src="../img/user.png" alt="User image">
                                                </div>
                                                <div class="candidate-list-details">
                                                    <div class="candidate-list-info">
                                                        <div class="candidate-list-title">
                                                            <h5 class="mb-0">Cuenta: <c:out value="${account.getAccountType()}" /></h5>
                                                        </div>
                                                        <div class="candidate-list-option">
                                                            <ul class="list-unstyled">
                                                                <li><i class="fas fa-hashtag pr-1"></i><c:out value="${account.getIdAccount()}" /></li>
                                                                <li><i class="fas fa-wallet pr-1"></i>$ <c:out value="${account.getBalance()}" /></li>
                                                                <li><i class="fas fa-user pr-1"></i><c:out value="${account.getFk_idClient()}" /></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="text-center">
                                                <ul class="list-unstyled mb-0 d-flex justify-content-center">
                                                    <li><a href="#" class="text-primary" data-toggle="tooltip" title="" data-original-title="view"><i class="far fa-eye"></i></a></li>
                                                    <li><a href="#" class="text-info" data-toggle="tooltip" title="" data-original-title="Edit"><i class="fas fa-pencil-alt"></i></a></li>
                                                    <li><a href="#" class="text-danger" data-toggle="tooltip" title="" data-original-title="Delete"><i class="far fa-trash-alt"></i></a></li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>





        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/a75f4cd3d7.js" crossorigin="anonymous"></script>

    </body>
</html>