<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Mi Página JSP</title>
        <link rel="stylesheet" type="text/css" href="/css/canciones.css">
  </head>
  <body>
    <ul><c:forEach var="artista" items="${listaArtistas}">
      <li>
        <a href="/artistas/detalle/${artista.id}"> ${artista.nombre} ${artista.apellido}</li></a>
      </c:forEach><ul/>
        <div><a href="/artistas/formulario/agregar"> <button>Agregar Artista</button> </a></div>
        <div><a href="/canciones"> <button>Volver a canciones</button> </a></div>




    </body>
  </html>