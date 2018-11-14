<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Ver evento</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
        <link href="estilos2.css" type="text/css" rel="stylesheet"/>
        <script src="main.js"></script>
        <style>
            .card {
           display: inline-grid;
               }
    </style>
    </head>
    <body>
        <%@page import="java.util.List" %>
        <%@page import="modelos.Evento" %>
        <% List<Evento> listaEventos = (List<Evento>) request.getAttribute("eventos"); %>
    <center>
        <header>
            <i><h1>Ver evento</h1></i>
        </header>

        <div id="content">
            <% Evento evento = null;
            for(int i = 0; i < listaEventos.size(); i++) {
                evento = listaEventos.get(i);
                //vamos a imprimir una carta por cada evento de la base de datos %>
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="<%= evento.imagen %>" width="250" height="250"alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title"><%= evento.nombre %></h5>
                    <p class="card-text"><%= evento.descripcion %></p>
                    <a href="#" class="btn btn-primary">Ver Evento</a>
                </div>
            </div>
            <%
            } %>

<!--            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="img7.jpg" width="250" height="250" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Marcha LGTBI</h5>
                    <p class="card-text">En el día internacional, cientos de personas se reunieron para pedir no más discriminación y respeto. </p>
                    <a href="#" class="btn btn-primary">Ver Evento</a>
                </div>
            </div>

            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="img8.jpg" width="250" height="250" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Avinersario del Sol 107.9</h5>
                    <p class="card-text">Los amantes de la salsa se preparan para disfrutar y vivir de una noche con un gran concierto por cuenta de la emisora El Sol 107.9.</p> 
                    <a href="#" class="btn btn-primary">Ver Evento</a>
                </div>
            </div>-->
        </div>
    </center>
</body>
</html>