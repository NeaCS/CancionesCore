<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Canción</title>

    <link rel="stylesheet" type="text/css" href="/css/cancion-form.css">
</head>
<body>

    <div class="container">

        <h1>Agregar Canción</h1>

        <form:form action="/canciones/procesa/agregar" method="POST" modelAttribute="cancion">

            <div class="form-group">
                <form:label path="titulo">Título:</form:label>
                <form:input path="titulo" cssClass="input"/>
                <form:errors path="titulo" cssClass="error"/>
            </div>

            <div class="form-group">
                <form:label path="artista">Artista:</form:label>
                <form:input path="artista" cssClass="input"/>
                <form:errors path="artista" cssClass="error"/>
            </div>

            <div class="form-group">
                <form:label path="album">Álbum:</form:label>
                <form:input path="album" cssClass="input"/>
                <form:errors path="album" cssClass="error"/>
            </div>

            <div class="form-group">
                <form:label path="genero">Género:</form:label>
                <form:input path="genero" cssClass="input"/>
                <form:errors path="genero" cssClass="error"/>
            </div>

            <div class="form-group">
                <form:label path="idioma">Idioma:</form:label>
                <form:input path="idioma" cssClass="input"/>
                <form:errors path="idioma" cssClass="error"/>
            </div>

            <button type="submit">Agregar Canción</button>

        </form:form>

        <div class="back">
            <a href="/canciones">Volver a lista de canciones</a>
        </div>

    </div>

</body>
</html>