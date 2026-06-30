<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Detalle Canción</title>
        <link rel="stylesheet" type="text/css" href="/css/detalleCancion.css">
    </head>

    <body>

        <div class="container">

            <h1>Detalle de Canción</h1>

            <div class="card">
                <p><strong>ID:</strong> ${cancion.id}</p>
                <p><strong>Título:</strong> ${cancion.titulo}</p>
                <p><strong>Artista:</strong> ${cancion.artista.nombre} ${cancion.artista.apellido}</p>
                <p><strong>Álbum:</strong> ${cancion.album}</p>
                <p><strong>Género:</strong> ${cancion.genero}</p>
                <p><strong>Idioma:</strong> ${cancion.idioma}</p>
                <p><strong>Fecha creación:</strong> ${cancion.fechaCreacion}</p>
                <p><strong>Fecha actualización:</strong> ${cancion.fechaActualizacion}</p>
            </div>

            <div class="footer">
                <a href="/canciones/formulario/editar/${cancion.id}">Editar Canción</a>
                <form action="/canciones/eliminar/${cancion.id}" method="POST">
                    <input type="hidden" name="_method" value="DELETE"/>
                    <button type="submit">Eliminar</button>
                </form>

                <a href="/canciones">Volver a lista de canciones</a>
            </div>

        </div>

    </body>
</html>