<%@ page import="java.util.List" %>
<%@ page import="metier.livers" %>
<%@ page import="dao.LivresDaoimpli" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Livre</title>
</head>
<body>
    <h1>Edit Livre</h1>
    <% String idParam = request.getParameter("id"); %>
    <% if (idParam != null && !idParam.isEmpty()) { %>
        <% int id = Integer.parseInt(idParam); %>
        <% LivresDaoimpli dao = new LivresDaoimpli(); %>
        <% livers livre = dao.getLivres(id); %>
        <% if (livre != null) { %>
            <form action="action" method="post">
                <input type="hidden" name="id" value="<%= livre.getId_livre() %>">
                <label>Titre:</label><br>
                <input type="text" name="title" value="<%= livre.getTitre() %>"><br>
                <label>L'auteur:</label><br>
                <input type="text" name="author" value="<%= livre.getLauteur() %>"><br>
                <label>L'année de publication:</label><br>
                <input type="text" name="publicationYear" value="<%= livre.getLannéepublication() %>"><br>
                <input type="submit" value="Save">
            </form>
        <% } else { %>
            <p>Aucun Livre.</p>
        <% } %>
    <% } else { %>
        <p>Aucun ID.</p>
    <% } %>
</body>
</html>
