<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Artista</title>

    <link rel="stylesheet" type="text/css" href="/css/cancion-form.css">
</head>

<body>

<div class="container">

    <h1>Formulario Artista</h1>

    <form:form modelAttribute="artista" action="/artistas/procesa/agregar" method="post">

        <div class="form-group">
            <label>Nombre</label>
            <form:input path="nombre"/>
            <form:errors path="nombre"/>
        </div>

        <div class="form-group">
            <label>Apellido</label>
            <form:input path="apellido"/>
            <form:errors path="apellido"/>
        </div>

        <div class="form-group">
            <label>Biografía</label>
            <form:textarea path="biografia"/>
            <form:errors path="biografia"/>
        </div>

        <button type="submit">Guardar Artista</button>

    </form:form>

    <div class="back">
        <a href="/artistas">Volver a lista</a>
    </div>

</div>

</body>
</html>