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
                            <a class="nav-link " href="#">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Clientes</a>
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
            <h5 class="title-page text-center" >Dar de alta un cliente nuevo</h5>
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto mt-3">
                    <form class="form-signin">
                        <div class="form-label-group">
                            <input type="text" id="inputNombre" name="inputNombre" class="form-control" placeholder="Nombre (s)" required autofocus>
                            <label for="inputNombre">Nombre (s)</label>
                        </div>

                        <div class="form-label-group">
                            <input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="Correo Electrónico" required>
                            <label for="inputEmail">Correo Electrónico</label>
                        </div>



                        <div class="row">
                            <div class="form-label-group col-6">
                                <input type="text" id="inputApellidoPaterno" name="inputApellidoPaterno" class="form-control" placeholder="Apellido Paterno" required>
                                <label for="inputApellidoPaterno">Apellido Paterno</label>
                            </div>

                            <div class="form-label-group col-6">
                                <input type="text" id="inputApellidoMaterno" name="inputApellidoMaterno" class="form-control" placeholder="Apellido Materno" required>
                                <label  for="inputApellidoMaterno">Apellido Materno</label>
                            </div>
                        </div>

                        <div class="form-label-group">
                            <input type="password" id="inputDireccion" name="inputDireccion" class="form-control" placeholder="Dirección" required>
                            <label for="inputDireccion">Dirección</label>
                        </div>


                        <div class="row">
                            <div class="form-label-group col-6">
                                <input type="text" id="inputCP" name="inputCP" class="form-control" placeholder="Código Postal" required>
                                <label for="inputCP">Código Postal</label>
                            </div>

                            <div class="form-label-group col-6">
                                <input type="text" id="inputEstado" name="inputEstado" class="form-control" placeholder="Estado" required>
                                <label  for="inputEstado">Estado</label>
                            </div>

                        </div>

                        <div class="row">
                            <div class="form-label-group col-6">
                                <input type="text" id="inputPais" name="inputPais" class="form-control" placeholder="País" required>
                                <label for="inputPais">País</label>
                            </div>

                            <div class="form-label-group col-6">
                                <input type="text" id="inputTelefono" name="inputTelefono" class="form-control" placeholder="Télefono" required>
                                <label  for="inputTelefono">Télefono</label>
                            </div>

                        </div>

                        <div>
                            <label for="inputFechaNac" style="padding-left: 24px" class="col-5 col-form-label">Fecha de Nacimiento</label>
                            <div class="form-label-group col">
                                <input class="form-control" name="inputFechaNac" style="padding: 12px 24px" type="date"  id="inputFechaNac">
                            </div>
                        </div>

                        <div class="form-label-group">
                            <input type="text" id="inputNumCliente" name="inputNumCliente" class="form-control" placeholder="Número de Cliente" required autofocus>
                            <label for="inputNumCliente">Número de Cliente</label>
                        </div>

                        <div class="form-label-group">
                            <input type="password" id="inputContraseña" name="inputContraseña" class="form-control" placeholder="Contraseña" required>
                            <label for="inputContraseña">Contraseña</label>
                        </div>
                        
                        <div class="form-label-group">
                            <input type="password" id="inputRepContraseña" name="inputRepContraseña" class="form-control" placeholder="Repetir Contraseña" required>
                            <label for="inputRepContraseña">Repetir Contraseña</label>
                        </div>


                        <div class="text-center">
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" style="font-size: 16px">Guardar <i class="fas fa-user-plus"></i></button>
                        </div>

                       
                    </form>
                </div>
            </div>

        </div>




        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/a75f4cd3d7.js" crossorigin="anonymous"></script>

    </body>
</html>