<%@ page import="java.util.List" %>
<%@ page import="metier.livers" %>
<%@ page import="dao.LivresDaoimpli" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Livre</title>
	
</head>
<body>
    <h1>Delete Livre</h1>
    <% String idParam = request.getParameter("id"); %>
    <% if (idParam != null && !idParam.isEmpty()) { %>
        <% int id = Integer.parseInt(idParam); %>
        <% LivresDaoimpli dao = new LivresDaoimpli(); %>
        <% livers livre = dao.getLivres(id); %>
        <% if (livre != null) { %>
            <form action="action" method="post">
                <input type="hidden" name="id" value="<%= livre.getId_livre() %>">
                <label>Titre:</label><br>
                <input type="text" name="titre" value="<%= livre.getTitre() %>"><br>
                <label>L'auteur:</label><br>
                <input type="text" name="lauteur" value="<%= livre.getLauteur() %>"><br>
                <label>L'année de publication:</label><br>
                <input type="text" name="lannéepublication" value="<%= livre.getLannéepublication() %>"><br>
                
                <a href="delete?id=<%= livre.getId_livre() %>">Delete</a>
            </form>
        <% } else { %>
            <p>Le livre a été supprimé.</p>
        <% } %>
    <% } else { %>
        <p>Ce livre n'existe pas.</p>
    <% } %>
    
    <form action="action">
    <input type="submit" value="Back" />
</form>

</body>
</html>
