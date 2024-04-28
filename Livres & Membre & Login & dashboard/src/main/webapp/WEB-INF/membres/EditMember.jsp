<%@ page import="java.util.List" %>
<%@ page import="metier.Membre" %>
<%@ page import="dao.MembreDaoImpl" %>
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
    <h1>Edit Member</h1>
    <% String idParam = request.getParameter("id"); %>
    <% if (idParam != null && !idParam.isEmpty()) { %>
        <% int id = Integer.parseInt(idParam); %>
        <% MembreDaoImpl dao = new MembreDaoImpl(); %>
        <% Membre membre = dao.getMembre(id); %>
        <% if (membre != null) { %>
            <form action="update" method="post">
                <input type="hidden" name="id" value="<%= membre.getId_membre() %>">
                <div class="form-group">
                    <label>Nom:</label>
                    <input type="text" class="form-control" name="Nom" value="<%= membre.getNom_mb() %>">
                </div>
                <div class="form-group">
                    <label>L'adresse:</label>
                    <input type="text" class="form-control" name="Ladresse" value="<%= membre.getLadresse() %>">
                </div>
                <div class="form-group">
                    <label>numéro de téléphone:</label>
                    <input type="text" class="form-control" name="numerotelephone" value="<%= membre.getNumérotéléphone() %>">
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
