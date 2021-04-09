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
                    <h5 class="card-title text-center">Iniciar Sesión</h5>

                    <form class="form-signin">
                        <div class="form-label-group">
                            <input type="text" id="inputUsuario" name="inputUsuario" class="form-control" placeholder="Usuario" required autofocus>
                            <label for="inputUsuario">Usuario</label>
                        </div>

                        <div class="form-label-group">
                            <input type="password" id="inputContraseña" name="inputContraseña" class="form-control" placeholder="Contraseña" required>
                            <label for="inputContraseña">Contraseña</label>
                        </div>

                        <div class="text-center">
                            <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Entrar</button>
                        </div>


                        <hr class="my-4">
                        <div class="text-center">
                            <a class=" text-center btn btn-lg btn-secondary btn-block text-uppercase" href="registro.jsp">Registrarse</a>
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