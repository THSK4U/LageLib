<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="metier.livers" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des Livres</title>
</head>
<body>

<h1>Liste des Livres</h1>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Titre</th>
        <th>Auteur</th>
        <th>Année de Publication</th>
        <th>Action</th>
    </tr>
    <c:forEach var="livre" items="${livresList}">
        <tr>
            <td>${livre.id_livre}</td>
            <td>${livre.titre}</td>
            <td>${livre.lauteur}</td>
            <td>${livre.lannéepublication}</td>
            <td>
                <a href="LivresServlet?action=select&id=${livre.id_livre}">Sélectionner</a>
                <a href="LivresServlet?action=delete&id=${livre.id_livre}">Supprimer</a>
            </td>
        </tr>
    </c:forEach>
</table>

<h2>Sélectionner un Livre par ID</h2>
<form action="Lservlet" method="get">
    ID du Livre: <input type="text" name="id">
    <input type="hidden" name="action" value="select">
    <input type="submit" value="Sélectionner">
</form>

<c:if test="${selectedLivre ne null}">
    <h3>Livre Sélectionné:</h3>
    <p>ID: ${selectedLivre.id_livre}</p>
    <p>Titre: ${selectedLivre.titre}</p>
    <p>Auteur: ${selectedLivre.lauteur}</p>
    <p>Année de Publication: ${selectedLivre.lannéepublication}</p>
</c:if>

<h2>Insérer un Nouveau Livre</h2>
<form action="Lservlet" method="post">
    Titre: <input type="text" name="titre"><br>
    Auteur: <input type="text" name="auteur"><br>
    Année de Publication: <input type="text" name="annee"><br>
    <input type="submit" value="Insérer">
</form>

</body>
</html>
