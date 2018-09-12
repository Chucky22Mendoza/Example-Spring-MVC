<%-- 
    Document   : home
    Created on : 11/09/2018, 05:17:40 PM
    Author     : Jesús Mendoza
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido - HOME</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body class="container">
        <h1 class="text-center mt-5">VIDEOJUEGOS</h1>
        <p>
            <a href="<c:url value="add.htm" />" class="btn btn-success mt-5 mb-2"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Agregar</a>
        </p>
        
        <table class="table table-dark">
            <thead>
                <tr>
                    <th scope="col">NOMBRE</th>
                    <th scope="col">EMPRESA</th>
                    <th scope="col">LANZAMIENTO</th>
                    <th scope="col">CATEGORÍA</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${juegos}" var="dato">      
                    <tr>
                        <td>${dato.nombre}</td>
                        <td>${dato.empresa}</td>
                        <td>${dato.lanzamiento}</td>
                        <td>${dato.categoria}</td>
                        <td><a class="btn btn-danger" href="<c:url value="delete.htm?id=${dato.id}" />" >Delete</a></td>
                        <td><a class="btn btn-warning" href="<c:url value="update.htm?id=${dato.id}" />" >Update</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
