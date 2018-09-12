<%-- 
    Document   : update
    Created on : 11/09/2018, 07:03:45 PM
    Author     : Jesús Mendoza
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACTUALIZAR</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
             <h2 class="mt-5 mb-2">ACTUALIZAR VIDEOJUEGO</h2>
             
             
             <form:form method="post" commandName="juegos" cssClass="d-flex justify-content-center col-sm-4"> <!--@ModelAttribute("juegos")-->
                 <div class="form-group">
                 <form:label path="nombre">Nombre</form:label>
                 <form:input cssClass="form-control" path="nombre"/>
                 </div>
                 
                 <div class="form-group">
                 <form:label path="empresa">Empresa</form:label>
                 <form:input cssClass="form-control" path="empresa"/>
                 </div>
                 
                 <div class="form-group">
                 <form:label path="lanzamiento">Lanzamiento</form:label>
                 <form:input cssClass="form-control" path="lanzamiento"/>
                 </div>
                 
                 <div class="form-group">
                 <form:label path="categoria">Categoria</form:label>
                 <form:input cssClass="form-control" path="categoria"/>
                 </div>
                 
                 <div class="form-group">
                     <form:button class="btn btn-success">ENVIAR</form:button>
                     <a href="<c:url value="home.htm" />" class="btn btn-danger">Cancelar</a>
                 </div>
                 
             </form:form>
             
             
           </div>
    </body>
</html>
