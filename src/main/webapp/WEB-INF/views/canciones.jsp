<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Canciones</title>
        <link rel="stylesheet" type="text/css" href="/css/canciones.css">
    </head>

    <body>

        <h1>Listado de Canciones</h1>

        <table>
            <thead>
                <tr>
                    <th>Título</th>
                    <th>Artista</th>
                    <th>Detalle</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach items="${listaCanciones}" var="cancion">
                    <tr>
                        <td>${cancion.titulo}</td>
                        <td>${cancion.artista}</td>
                        <td>
                            <a href="/canciones/detalles/${cancion.id}">
                                Detalle
                            </a>
                        </td>
                    </tr>
                </c:forEach>


            </tbody>
        </table>
        <div><a href="/canciones/formulario/agregar"> <button>Ir a agregar canción</button> </a></div>
    </body>
</html>