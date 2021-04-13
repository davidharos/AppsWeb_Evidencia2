<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <link href="CSS/styles.css" rel="stylesheet">

        <title>Bank Hammer</title>
    </head>
    <body class="body-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                    <div class="card card-signin my-5">
                        <div class="card-body ">
                            <div class="text-center mb-3">
                                <img src="./img/Logo.PNG" class="text-center" style="max-height: 180px; max-width: 180px">  
                            </div>

                            <hr class="my-4">
                            <h5 class="card-title text-center">Registrarse</h5>

                            <form class="form-signin" method="POST" action="Auth/register">
                                <div class="form-label-group">
                                    <input type="text" id="inputUsername" name="inputUsername" class="form-control" placeholder="Usuario" required autofocus>
                                    <label for="inputUsername">Usuario</label>
                                </div>

                                <div class="form-label-group">
                                    <input type="text" id="inputNombre" name="inputNombre" class="form-control" placeholder="Nombre (s)" required>
                                    <label for="inputNombre">Nombre (s)</label>
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
                                    <input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="Correo Electrónico" required>
                                    <label for="inputEmail">Correo Electrónico</label>
                                </div>

                                <div class="form-label-group">
                                    <input type="password" id="inputContraseña" name="inputPassword" class="form-control" placeholder="Contraseña" required>
                                    <label for="inputContraseña">Contraseña</label>
                                </div>


                                <div class="form-label-group">
                                    <input type="text" id="inputDireccion" name="inputDireccion" class="form-control" placeholder="Dirección" required>
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
                                <div class="row">
                                    <div class="form-label-group col-6">
                                        <input type="text" id="inputCiudad" name="inputCiudad" class="form-control" placeholder="Ciudad" required>
                                        <label for="inputCiudad">Ciudad</label>
                                    </div>

                                </div>

                                <div>
                                    <label for="inputFechaNac" style="padding-left: 24px" class="col-5 col-form-label">Fecha de Nacimiento</label>
                                    <div class="form-label-group col">
                                        <input class="form-control" name="inputFechaNac" style="padding: 12px 24px" type="date"  id="inputFechaNac">
                                    </div>
                                </div>


                                <div class="text-center">
                                    <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Entrar</button>
                                </div>

                                <hr class="my-4">
                                <div class="text-center">
                                    <a class=" text-center btn btn-lg btn-secondary btn-block text-uppercase" href="index.jsp">Iniciar Sesión</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    </body>
</html>