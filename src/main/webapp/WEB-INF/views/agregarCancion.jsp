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
                <form:input path="titulo" />
                <form:errors path="titulo" />
            </div>

            <div class="form-group">
                <form:label path="artista">Artista:</form:label>
                <form:input path="artista"/>
                <form:errors path="artista" />
            </div>

            <div class="form-group">
                <form:label path="album">Álbum:</form:label>
                <form:input path="album" />
                <form:errors path="album" />
            </div>

            <div class="form-group">
                <form:label path="genero">Género:</form:label>
                <form:input path="genero" />
                <form:errors path="genero" />
            </div>

            <div class="form-group">
                <form:label path="idioma">Idioma:</form:label>
                <form:input path="idioma" />
                <form:errors path="idioma" />
            </div>

            <button type="submit">Agregar Canción</button>

        </form:form>

        <div class="back">
            <a href="/canciones">Volver a lista de canciones</a>
        </div>

    </div>

</body>
</html>