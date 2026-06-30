<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle Artista</title>

    <link rel="stylesheet" type="text/css" href="/css/cancion-form.css">
</head>

<body>

<div class="container">

    <h1>Detalle del Artista</h1>

    <div class="form-group">
        <label>Nombre:</label>
        <p>${artista.nombre}</p>
    </div>

    <div class="form-group">
        <label>Apellido:</label>
        <p>${artista.apellido}</p>
    </div>

    <div class="form-group">
        <label>Biografía:</label>
        <p>${artista.biografia}</p>
    </div>

    <div class="form-group">
        <label>Fecha creación:</label>
        <p>${artista.fechaCreacion}</p>
    </div>

    <div class="form-group">
        <label>Fecha actualización:</label>
        <p>${artista.fechaActualizacion}</p>
    </div>

    <hr>

    <h2>Canciones del artista</h2>

    <c:choose>
        <c:when test="${not empty artista.listaCanciones}">
            <ul>
                <c:forEach items="${artista.listaCanciones}" var="cancion">
                    <li>
                        ${cancion.titulo} - ${cancion.album}
                    </li>
                </c:forEach>
            </ul>
        </c:when>

        <c:otherwise>
            <p>Este artista aún no tiene canciones registradas.</p>
        </c:otherwise>
    </c:choose>

    <br>

    <a href="/artistas">Volver a lista de artistas</a>

</div>

</body>
</html>