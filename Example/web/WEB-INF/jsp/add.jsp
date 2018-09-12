<%-- 
    Document   : home
    Created on : 11/09/2018, 05:17:40 PM
    Author     : Jesús Mendoza
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AGREGAR</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body class="">
            <div class="container ">
             <h2 class="mt-5 mb-2">AGREGAR NUEVO VIDEOJUEGO</h2>
             <div class="d-flex justify-content-center col-sm-4">
                 <form action="<c:url value="add_post.htm" />" class="">
                    <div class="form-group">
                        <label for="nombre">Nombre:</label>
                        <input type="text" class="form-control" id="nombre" placeholder="Ingresa el nombre del juego"  name="nombre">
                    </div>
                    <div class="form-group">
                        <label for="empresa">Empresa:</label>
                        <input type="text" class="form-control" id="empresa" placeholder="Ingresa la empresa"  name="empresa">
                    </div>
                    <div class="form-group">
                        <label for="lanzamiento">Lanzamiento:</label>
                        <input type="text" class="form-control" id="lanzamiento" placeholder="Ingresa la fecha de lanzamiento"  name="lanzamiento">
                    </div>
                    <div class="form-group">
                        <label for="categoria">Categoría:</label>
                        <input type="text" class="form-control" id="categoria" placeholder="Ingresa su categoría"  name="categoria">
                    </div>

                    <button type="submit" class="btn btn-success">Guardar</button>
                    <a href="<c:url value="home.htm" />" class="btn btn-danger">Cancelar</a>
                </form>
             </div>
             
           </div>
    </body>
</html>
