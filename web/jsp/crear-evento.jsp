<%-- 
    Document   : crear-evento
    Created on : 17/09/2018, 09:24:09 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="estilos.css" type="text/css" rel="stylesheet"/>
        <link href="index.jsp" type="text/css" rel="stylesheet"/>
        <title>Crear evento</title>
    </head>
    <body>
        <style>
    form
    {
       padding:3px;
       display:inline-block;
       margin:auto;
      
    }
    input[type="text"] {
    display: unset;
   }
    label
    {
       display: block;
       padding:2px;
       margin:2px;
       cursor:pointer;
    }

    input,select{
       margin:2px; 
       font-family: "Trebuchet MS", Geneva, Arial, Helvetica, sans-serif;
       font-size: 12px;
       display: block;
    }
    .noblck
    {
       display: inline;
    }
        </style>
    <center>
        <i><h1>Crear Evento</h1></i>
    
    <form name="crear-evento" action="CrearEvento" method="POST">
  
        <i><h2>Formulario de Evento</h2></i>

        <label>Nombre del evento </label><input type="text" name="nombre" size="37" maxlength="150" />
        <label>Insertar imagen</label><input type="imagen" name="imagen" size="37" maxlength="150" />
        <label>Hashtag</label><input type="text" name="hashtag" size="37" maxlength="105"/>
        <label>Descripción del evento</label><input type="text" name="descripcion" size="37" maxlength="105"/>
        <br>
        <input type="submit" value="Crear evento" />
        <a title="Instagram" href="https://www.instagram.com/?hl=es-la"><img src="img5.jpg"width="50" height="50"alt=Instagram></a>
    </form>
    </center>
    </body>
</html>
