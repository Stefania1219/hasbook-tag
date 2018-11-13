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
        <title>Crear evento</title>
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
    </head>
    <body>
    <center>
        <i><h1>Crear Evento</h1></i>
        <%@page import="java.util.List" %>
        <%@page import="modelos.Evento" %>
    <%
        List<Evento> listaEvento = (List<Evento>)request.getAttribute("eventos");
        %>
    <form name="crear-evento" action="CrearEvento" method="POST">
  
        <i><h2>Formulario de Evento</h2></i>

        <label>Nombre del evento </label><input type="text" name="nombre" size="37" maxlength="150" />
        <label>Insertar imagen</label><input type="imagen" name="imagen" size="37" maxlength="150" />
        <label>Hashtag</label><input type="text" name="hashtag" size="37" maxlength="105"/>
        <label>Descripción del evento</label><input type="text" name="descripcion" size="37" maxlength="105"/>
        <br>
        <input type="submit" value="Crear evento" />
        <table border="1">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>nombre</th>
                        <th>imagen</th>
                        <th>hashtag</th>
                        <th>descripción</th>
                        <th>editar</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for(Evento e : listaEvento) {%>
                    <tr>
                        <td><%= e.idCrearEvento%></td>
                        <td><%= e.nombre%></td>
                        <td><%= e.imagen%></td>
                        <td><%= e.hashtag%></td>
                        <td><%= e.descripcion%></td>
                        <td><image class="edit" onclick="editarEvento(<%= e.idCrearEvento%>, '<%= e.nombre%>', '<%= e.imagen%>', '<%= e.hashtag%>', '<%= e.descripcion%>')" src="https://icon-icons.com/icons2/906/PNG/512/pencil_icon-icons.com_69999.png" /></td>
                    </tr>
                    <%
                    }%>
                </tbody>
            </table>
        <a title="Instagram" href="https://www.instagram.com/?hl=es-la"><img src="img5.jpg"width="50" height="50"alt=Instagram></a>
        <script>
                function editarEvento(id, nombre, imagen, hashtag, descripcion){
                    //alert(id + " " + nombre + " " + ruta);
                    var inputidCrearEvento = document.getElementById("idCrearEvento");
                    var inputNombre = document.getElementById("nombre");
                    var inputImagen = document.getElementById("imagen");
                    var inputHashtag = document.getElementById("hashtag");
                    var inputDescripcion = document.getElementById("descripcion");
                    
                    inputidCrearEvento.value = id;
                    inputNombre.value = nombre;
                    inputImagen.value = imagen;
                    inputHashtag.value = hashtag;
                    inputDescripcion.value = descripcion;
                }
            </script>
    </form>
    </center>
    </body>
</html>
