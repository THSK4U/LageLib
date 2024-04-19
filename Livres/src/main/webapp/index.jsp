<%@ page import="java.util.List" %>
<%@ page import="metier.livers" %>
<%@ page import="dao.LivresDaoimpli" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <th>Année de publication</th>
            <th>Action</th>
        </tr>
        <% 
        LivresDaoimpli dao = new LivresDaoimpli();
        List<livers> list = dao.ALLlist();
        for(livers liv: list) {
        %>
        <tr>
            <td><%= liv.getId_livre() %></td>
            <td><%= liv.getTitre() %></td>
            <td><%= liv.getLauteur() %></td>
            <td><%= liv.getLannéepublication() %></td>
            <td>
                <form action="Lservlet" method="post">
                    <input type="hidden" name="id" value="<%= liv.getId_livre() %>">
                    <input type="hidden" name="title" value="<%= liv.getTitre() %>">
                    <input type="hidden" name="author" value="<%= liv.getLauteur() %>">
                    <input type="hidden" name="publicationYear" value="<%= liv.getLannéepublication() %>">
                    <input type="submit" value="Edit">
                </form>
            </td>
        </tr>
        <% } %>
    </table>
    <form action="Lservlet" method="post">
        <h2>Modifier un livre</h2>
        <label>ID:</label>
        <input type="text" name="id" required><br>
        <label>Titre:</label>
        <input type="text" name="title" required><br>
        <label>Auteur:</label>
        <input type="text" name="author" required><br>
        <label>Année de publication:</label>
        <input type="text" name="publicationYear" required><br>
        <input type="submit" value="Modifier">
    </form>
</body>
</html>
