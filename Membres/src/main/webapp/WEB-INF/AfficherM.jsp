<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Metier.Membre" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Livers</title>
</head>
<body>
<div class="container">
<% List<Membre> Livres = (List<Membre>)request.getAttribute("membres"); %>
<form action="edit.jsp" method="get">
    <label for="searchId">Entrez ID:</label>
    <input type="text" id="searchId" name="id" placeholder="Entrez id">
    <input class="search btn btn-dark btn-sm" type="submit" value="Search">
</form> 
	 <a href="<%=request.getContextPath()%>/new" class="ajouter btn btn-outline-dark d-flex justify-content-center">ajouter un livre </a>


    <div class="list">

<table border="1">
  <tr>
    <th>ID</th>
    <th>Title</th>
    <th>Author</th>
    <th>Publication Year</th>
    <th>Action</th>
  </tr>
  <% for(Membre livre : Livres) { %>
  <tr>
    <td><%= livre.getId_membre() %></td>
    <td><%= livre.getNom_mb()%></td>
    <td><%= livre.getLadresse() %></td>
    <td><%= livre.getNumérotéléphone() %></td>

        <td>
         <a href="edit.jsp?id=<%= livre.getId_membre() %>">Edit</a>
          <a href="delete.jsp?id=<%= livre.getId_membre() %>">Delete</a>
         </td>   
  </tr>
  <% } %>
</table>
    </div>

</div>


</body>
</html>