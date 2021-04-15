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
        <link href="./CSS/styles.css" rel="stylesheet">
        <link href="./CSS/menu.css" rel="stylesheet">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark static-top" style="background-color: #3b5998;">
            <div class="container">
                <a class="navbar-brand" href="Menu.jsp">
                    <img src="./img/Logo_Navbar.PNG" alt="Logo" style="max-height: 80px">
                </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-between ml-3" id="navbarResponsive">
                    <ul class="nav navbar-nav navbar-right ">
                        <li class="nav-item">
                            <a class="nav-link " href="Menu.jsp">Inicio

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Servicios</a>
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


        <div class="container">
            <h5 class="title-page text-center" >Realizar una transferencia</h5>
            <form class="form-signin">
                <div class="row mt-3">
                    <div class="col-3  mx-auto mt-3" style="margin-right: 0 !important">
                        <h5>Datos de las cuentas</h5>
                    </div>
                    <div class="col-sm-9 col-md-7 col-lg-4 mx-auto mt-3" style="margin-left: 0 !important">


                        <div class="form-label-group">

                            <select name="inputCuentaRetiro" class="form-select select-perso" aria-label="Default select example">
                                <option selected>Cuenta de retiro</option>
                                <option value="1">Cuenta 1</option>
                                <option value="2">Cuenta 2</option>
                                <option value="3">Cuenta 3</option>
                                <option value="4">Cuenta 4</option>
                            </select>
                        </div>


                        <div class="form-label-group">
                            <input type="text" step="0.01" id="inputRemitente" class="form-control" placeholder="Remitente" required>
                            <label for="inputRemitente">Remitente</label>
                        </div>



                </div>
                <hr>
                <div class="row">
                    <div class="col-3  mx-auto mt-3" style="margin-right: 0 !important">
                        <h5>Datos de la transferencia</h5>
                    </div>
                    <div class="col-sm-9 col-md-7 col-lg-4 mx-auto mt-3" style="margin-left: 0 !important">

                        <div class="form-label-group">
                            <input type="number" step="0.01" id="inputMonto" class="form-control" placeholder="Monto" required>
                            <label for="inputMonto">Monto</label>
                        </div>

                        <div class="text-center">
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" style="font-size: 16px">Continuar <i class="fas fa-paper-plane"></i></button>
                        </div>


                    </div>


                </div>
            </form>
        </div>




        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/a75f4cd3d7.js" crossorigin="anonymous"></script>

    </body>
</html>