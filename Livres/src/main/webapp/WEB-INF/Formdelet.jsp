<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="metier.livers" %>
<%@ page import="dao.LivresDaoimpli" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Livre</title>
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
        <h1>Supprimer Livre</h1>
        <p>Êtes-vous sûr de vouloir supprimer ce livre?</p>
        <% String idParam = request.getParameter("id"); %>
    <% if (idParam != null && !idParam.isEmpty()) { %>
        <% int id = Integer.parseInt(idParam); %>
        <% LivresDaoimpli dao = new LivresDaoimpli(); %>
        <% livers livre = dao.getLivres(id); %>
        <% if (livre != null) { %>
        <form action="delete" method="post">
      <div>
     <input type="hidden" name="id" value="<%= livre.getId_livre() %>">
     <label><%= livre.getTitre() %> - <%= livre.getLauteur() %> - <%= livre.getLannéepublication() %></label>
            </div>
      <button type="submit" class="btn btn-danger">Oui, Supprimer</button>
            <a href="/gsd/" class="btn btn-secondary">Annuler</a>
            <% } else { %>
            <p>Aucun Livre.</p>
        <% } %>
    <% }  %>
       

        </form>
    </div>
</body>
</html>
