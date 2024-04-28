<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="metier.Membre" %>
<%@ page import="dao.MembreDaoImpl" %>

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
        <h1>Supprimer Membre</h1>
        <p>Êtes-vous sûr de vouloir supprimer ce Membre?</p>
        <% String idParam = request.getParameter("id"); %>
    <% if (idParam != null && !idParam.isEmpty()) { %>
        <% int id = Integer.parseInt(idParam); %>
        <% MembreDaoImpl dao = new MembreDaoImpl(); %>
        <% Membre membre = dao.getMembre(id); %>
        <% if (membre != null) { %>
        <form action="delete" method="post">
      <div>
     <input type="hidden" name="id" value="<%= membre.getId_membre() %>">
     <label><%= membre.getNom_mb() %> - <%= membre.getLadresse() %> - <%= membre.getNumérotéléphone() %></label>
            </div>
      <button type="submit" class="btn btn-danger">Oui, Supprimer</button>
            <a href="/gsd/Member" class="btn btn-secondary">Annuler</a>
            <% } else { %>
            <p>Aucun Membre.</p>
        <% } %>
    <% } else { %>
    	<p>Aucun ID n'a été sélectionné.</p>
  <%  } %>
       

        </form>
    </div>
</body>
</html>
