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
        <link href="./CSS/menu.css" rel="stylesheet">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark static-top" style="background-color: #3b5998;">
            <div class="container " >
                <a class="navbar-brand" href="Menu.jsp">
                    <img src="./img/Logo_Navbar.PNG" alt="Logo" style="max-height: 80px">
                </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-between ml-3" id="navbarResponsive">
                    <ul class="nav navbar-nav navbar-right ">
                        <li class="nav-item">
                            <a class="nav-link active" href="Menu.jsp">Inicio

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="clientes.jsp">Clientes</a>
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


        <div class="container" style="height:95vh">

            <h5 class="title-page text-center" >Seleccione un servicio</h5>

            <div class="row mt-5 ">
                <a href="nuevaTransferencia.jsp" class="col-xs-12 col-sm-6 col-md-4">
                    <div class="card card-service">
                        <div class="card-body align-items-center d-flex justify-content-center">
                            <div class="text-center">
                                <i class="fas fa-money-bill-wave fa-5x"></i>
                            </div>

                        </div>
                        <div class="card-text">
                            <h4 class="card-title d-block">Realizar <br> Transferencia</h4>
                        </div>
                    </div>
                </a>


                <div class="col-xs-12 col-sm-6 col-md-4">
                    <a class="card card-service" href="clientes.jsp">
                        <div class="card-body align-items-center d-flex justify-content-center">
                            <div class="text-center">
                                <i class="fas fa-user-tie fa-5x"></i>
                            </div>

                        </div>
                        <div class="card-text">
                            <h4 class="card-title d-block">Ver <br> Clientes</h4>
                        </div>
                    </a>
                </div>


                <div class="col-xs-12 col-sm-6 col-md-4">
                    <a class="card card-service" href="nuevaCuenta.jsp">
                        <div class="card-body align-items-center d-flex justify-content-center">
                            <div class="text-center">
                                <i class="fas fa-file-invoice fa-5x"></i>
                            </div>

                        </div>
                        <div class="card-text">
                            <h4 class="card-title d-block">Dar de alta una<br> Nueva cuenta</h4>
                        </div>
                    </a>
                </div>

            </div>

            <div class="row mt-5 ">
                <div class="col-xs-12 col-sm-6 col-md-4">
                    <a href="Account/accountList" class="card card-service">
                        <div class="card-body align-items-center d-flex justify-content-center">
                            <div class="text-center">
                                <i class="fas fa-file-invoice-dollar fa-5x"></i>
                            </div>

                        </div>
                        <div class="card-text">
                            <h4 class="card-title d-block">Resumen de <br> Cuentas</h4>
                        </div>
                    </a>
                </div>


                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="card card-service">
                        <div class="card-body align-items-center d-flex justify-content-center">
                            <div class="text-center">
                                <i class="fas fa-cogs fa-5x"></i>
                            </div>

                        </div>
                        <div class="card-text">
                            <h4 class="card-title d-block">Ajustes & <br> Preferencias</h4>
                        </div>
                    </div>
                </div>


                <div class="col-xs-12 col-sm-6 col-md-4">
                    <div class="card card-service">
                        <div class="card-body align-items-center d-flex justify-content-center">
                            <div class="text-center">
                                <i class="fas fa-headset fa-5x"></i>
                            </div>

                        </div>
                        <div class="card-text">
                            <h4 class="card-title d-block">Asistente <br> Virtual</h4>
                        </div>
                    </div>
                </div>

            </div>

        </div>




        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/a75f4cd3d7.js" crossorigin="anonymous"></script>

    </body>
</html>