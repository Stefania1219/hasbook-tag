<%-- 
    Document   : index
    Created on : 3/09/2018, 08:48:40 AM
    Author     : Usuario
--%>

<%@page import="modelos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hashbook Tag</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link href="estilos.css" type="text/css" rel="stylesheet"/>
    <script src="main.js"></script>
    <style>
     .card {
    display: inline-grid;
        }
     h2 {
    background: seashell;
        }
    </style>
</head>
<body>
    <center>
    <header>
        <i><h1>Hashbook Tag</h1></i>
    </header>
        <a class="button" href="CrearEvento" rel="nofollow" target="_blank">Crear Evento</a>
        <a class="button" href="VerEvento" rel="nofollow" target="_blank">Ver Evento</a>
        <br>
    <div class="card" style="width: 16rem;">
                    <img class="card-img-top" src="img1.jpg" width="250" height="250" alt="Card image cap">
                    <div class="card-body">
                        <h3 class="card-title">Copa mundial de futbol</h3>
                      <p class="card-text">Esta evento se realizó entre el 14 de junio y el 15 de julio de 2018 en Rusia, que consiguió los derechos de organización el 2 de diciembre de 2010.</p>
                    </div>
     </div>
        
     <div class="card" style="width: 16rem;">
                    <img class="card-img-top" src="img2.jpg" width="250" height="250" alt="Card image cap">
                    <div class="card-body">
                        <h3 class="card-title">Tomorrowland </h3>
                      <p class="card-text">El festival de música electrónica más grande del mundo,tiene de una decoración que simula un mundo de fantasía.</p>
                   </div>
     </div>
        
   <div class="card" style="width: 16rem;">
                    <img class="card-img-top" src="img3.jpg" width="250" height="250" alt="Card image cap">
                    <div class="card-body">
                        <h3 class="card-title">Feria de las flores</h3>
                      <p class="card-text">La Feria de las Flores es una de las festividades más importantes de Colombia. Se celebra cada año en Medellín, capital del departamento de Antioquia. </p>
                    </div>
     </div>
        
    <div class="card" style="width: 16rem;">
                    <img class="card-img-top" src="img4.jpg" width="250" height="250" alt="Card image cap">
                    <div class="card-body">
                        <h3 class="card-title">Juegos Olímpicos</h3>
                      <p class="card-text">Los Juegos Olímpicos son considerados la principal competición del mundo deportivo, con más de doscientas naciones participantes.</p>
                    </div>
     </div>
        <i><h2>Registro de usuario</h2></i>
   <div class="container">
        <form method="get" action="FormularioUsuarios">
            <div class="form-group">
                <label for="inputNombre">Nombre</label>
                <input name="nombre" type="text" class="form-control" id="inputNombre" aria-describedby="emailHelp" placeholder="Ingrese su nombre">
            </div>
            <div class="form-group">
                <label for="inputCorreo">Correo</label>
                <input name="correo" type="email" class="form-control" id="inputCorreo" aria-describedby="emailHelp" placeholder="Ingrese su correo">
            </div>
            <div class="form-group">
                <label for="inputContrasena">Contraseña</label>
                <input name="contrasenia" type="password" class="form-control" id="inputContrasena" aria-describedby="emailHelp" placeholder="Ingrese su contraseña">
            </div>
            <button type="submit" class="btn btn-primary">Guardar Usuario</button>
          <input type="submit" value="Usuario"  method="POST"/>
        <table border="1">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>nombre</th>
                        <th>correo</th>
                        <th>contraseña</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for(Usuario u :Usuario) {%>
                    <tr>
                        <td><%= u.idFormularioUsuarios%></td>
                        <td><%= u.nombre%></td>
                        <td><%= u.correo%></td>
                        <td><%= u.contrasenia%></td>
                        <td><image class="edit" onclick="guardarUsuario(<%= u.idFormularioUsuarios%>, '<%= u.nombre%>', '<%= u.correo%>', '<%= u.contrasenia%>)" src="img9.png" width="90" height="90" /></td>
                    </tr>
                    <%
                    }%>
                </tbody>
            </table>
        <a title="Instagram" href="https://www.instagram.com/?hl=es-la"><img src="img5.jpg"width="50" height="50"alt=Instagram></a>
        <script>
                function Usuario(id, nombre, correo, contrasenia){
                    //alert(id + " " + nombre + " " + ruta);
                    var inputidFormularioUsuarios = document.getElementById("idFormularioUsuarios");
                    var inputnombre = document.getElementById("nombre");
                    var inputcorreo = document.getElementById("correo");
                    var inputcontrasenia = document.getElementById("contrasenia");
                    
                    inputidFormularioUsuarios.value = id;
                    inputnombre.value = nombre;
                    inputcorreo.value = correo;
                    inputcontrasenia.value = contrasenia;
                }
            </script>
    </form>
        </form>
        
</body>
</html>