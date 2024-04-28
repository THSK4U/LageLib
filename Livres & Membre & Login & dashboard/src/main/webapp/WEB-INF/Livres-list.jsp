<%@ page import="metier.livers" %>
<%@ page import="dao.LivresDaoimpli" %>
<%@ page import="java.util.List" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>List of Livers</title>
    <style>
        table {
            border-collapse: collapse;
            width: 70%;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }
        .list{
        display: flex;
            justify-content: center;
        }
        h1{
            display: flex;
            justify-content: center;
        }
    </style>
</head>
<body>

    <h1>List de Livers</h1>
    <a href="Membre">Membre</a>
    
<form action="edit.jsp" method="get">
    <label for="searchId">Entrez Nom:</label>
    <input type="text" id="searchId" name="nom" placeholder="Entrez nom">
    <input type="submit" value="Search">
</form>    


    <div class="list">
   
    <table>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>L'auteur</th>
            <th>L'année de publication</th>
        </tr>
        <% 
 	LivresDaoimpli deo = new LivresDaoimpli();
	List<livers> list =  deo.ALLlist();
	for(livers liv: list) {
        %> 
                <tr>
                    <td><%= liv.getId_livre() %></td>
                    <td><%= liv.getTitre() %></td>
                    <td><%= liv.getLauteur() %></td>
                    <td><%= liv.getLannéepublication() %></td>
                    <td>
                        <a href="edit.jsp?id=<%= liv.getId_livre() %>">Edit</a>
                        <a href="delete.jsp?id=<%= liv.getId_livre() %>">Delete</a>
                    </td>
                </tr>
       <%  
             } 
        %> 
     </table>  
       <table>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>L'auteur</th>
            <th>L'année de publication</th>
        </tr>
     <c:forEach items="${list}" var="livre">
     
                <tr>
<%--                 	<td>${request.getAttribute("list"}</td> --%>
                    <td>${livre.Id_livre}</td>
                    <td>${livre.titre}</td>
                    <td>${livre.lauteur}</td>
                    <td>${livre.lannéepublication}</td>
                    <td>
                        <a href="edit.jsp?id=${livre.Id_livre}">Edit</a>
                        <a href="delete.jsp?id=${livre.Id_livre}">Delete</a>
                    </td>
                </tr>
          </c:forEach>
      
    </table>  
    </div>
</body>
</html>
