<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="metier.livers" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Livers</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        table {
            border-collapse: collapse;
            min-width: 100%;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
            
        }

        th {
        bacjground-color:dark;
            font-weight: bold;
            
        }
        .list{
        display: flex;
            justify-content: center;
        }
        h1{
            display: flex;
            justify-content: center;
            font-weight: bold;
            
        }
        .container {
            margin-top: 50px;
        }        
        label {
            font-weight: bold;
        }
        .ajouter{
        margin-top: 30px;
        }
        .btn{
            vertical-align: baseline;
            }
		.dropdown-menu{
		min-width: 2rem;
		}
		.badge{
		font-size: 1rem;
		margin:3px;
		}
    </style>
</head>
<body>
<div class="container">
<% List<livers> Livres = (List<livers>)request.getAttribute("Livre"); %>
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
  <% for(livers livre : Livres) { %>
  <tr>
    <td><%= livre.getId_livre() %></td>
    <td><%= livre.getTitre() %></td>
    <td><%= livre.getLauteur() %></td>
    <td><%= livre.getLannéepublication() %></td>
 <td>
          <a href="edit?id=<%= livre.getId_livre() %>" style="width: 6rem;" class="bg-success badge text-wrap text-white">Edit</a>
     <a href="confirmation?id=<%= livre.getId_livre() %>" style="width: 6rem;" class="bg-danger badge text-wrap text-white">Delete</a>
    </td>
    
         
         
  </tr>
  <% } %>
</table>
    </div>

</div>


</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</html>
