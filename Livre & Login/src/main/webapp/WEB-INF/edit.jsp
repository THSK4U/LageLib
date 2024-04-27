<%@ page import="java.util.List" %>
<%@ page import="metier.livers" %>
<%@ page import="dao.LivresDaoimpli" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Livre</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        
        .container {
            margin-top: 50px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        
        label {
            font-weight: bold;
        }
        h1{
                    font-weight: bold;
        
        }
        
    </style>
</head>
<body>
<div class="container">
    <h1>Edit Livre</h1>
    <% String idParam = request.getParameter("id"); %>
    <% if (idParam != null && !idParam.isEmpty()) { %>
        <% int id = Integer.parseInt(idParam); %>
        <% LivresDaoimpli dao = new LivresDaoimpli(); %>
        <% livers livre = dao.getLivres(id); %>
        <% if (livre != null) { %>
            <form action="update" method="post">
                <input type="hidden" name="id" value="<%= livre.getId_livre() %>">
                <div class="form-group">
                    <label>Titre:</label>
                    <input type="text" class="form-control" name="titre" value="<%= livre.getTitre() %>">
                </div>
                <div class="form-group">
                    <label>L'auteur:</label>
                    <input type="text" class="form-control" name="lauteur" value="<%= livre.getLauteur() %>">
                </div>
                <div class="form-group">
                    <label>L'année de publication:</label>
                    <input type="text" class="form-control" name="lannéepublication" value="<%= livre.getLannéepublication() %>">
                </div>
                <button type="submit" class="btn btn-dark">Save</button>
            </form>
        <% } else { %>
            <p>Aucun Livre.</p>
        <% } %>
    <% } else { %>
        <p>Aucun ID.</p>
    <% } %>
</div>
</body>
</html>
