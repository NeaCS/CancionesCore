<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Editar Canción</title>

    <link rel="stylesheet" type="text/css" href="/css/cancion-form.css">
  </head>
  <body>

    <div class="container">

      <h1>Editar Canción</h1>

      <form:form action="/canciones/procesa/editar/${cancion.id}"
      method="POST"
      modelAttribute="cancion">

      <input type="hidden" name="_method" value="PUT"/>

      <form:hidden path="id"/>

      <div>
        <form:label path="titulo">Título:</form:label>
          <form:input path="titulo"/>
          <form:errors path="titulo"/>
        </div>

        <div>
          <form:label path="artista">Artista:</form:label>

            <form:select path="artista.id">
              <c:forEach items="${listaArtistas}" var="art">
                <form:option value="${art.id}">
                  ${art.nombre}
                </form:option>
              </c:forEach>
            </form:select>

            <form:errors path="artista"/>
          </div>
          <div>
            <form:label path="album">Álbum:</form:label>
              <form:input path="album"/>
              <form:errors path="album"/>
            </div>

            <div>
              <form:label path="genero">Género:</form:label>
                <form:input path="genero"/>
                <form:errors path="genero"/>
              </div>

              <div>
                <form:label path="idioma">Idioma:</form:label>
                  <form:input path="idioma"/>
                  <form:errors path="idioma"/>
                </div>

                <button type="submit">Actualizar Canción</button>

              </form:form>

              <br>

              <a href="/canciones">Volver a lista de canciones</a>

            </div>