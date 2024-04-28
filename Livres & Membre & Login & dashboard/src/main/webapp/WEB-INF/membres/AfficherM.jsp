<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="metier.Membre" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Livers</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
        
         .sidebar {
            position: fixed;
            left: 0;
            top: 0;
            bottom: 0;
            width: 200px;
            background-color: #343a40;
            overflow-y: auto;
        }
        h2{
        padding-top:20px;
        display : flex;
 	    justify-content: center;
        }
        .container {
            margin-left: 275px;
        }

        .nav-link {
            color: #f8f9fa !important;
        }
        .nav-link:hover {
            background-color: #6c757d !important;
        }
        .List{
        display : flex;
 	    justify-content: space-between;
        }
        .Dashboard{
        display : flex;
 	    gap:15%;
 	    padding-top:20px;
        }
        
  .nav.flex-column .nav-item {
  	padding-top:10px;
}

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
<div class="sidebar">
        <h2 style="color: #f8f9fa;">Menu</h2>
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link Dashboard" href="Dashboard"><i class="fas fa-tachometer-alt"></i>Dashboard</a>
            </li>
            
            <li class="nav-item">
            <a class="nav-link collapsed List" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLivres" aria-expanded="false" aria-controls="collapseLayouts">
                               <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Livres
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLivres" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="List">Liste de livres</a>
                                    <a class="nav-link" href="new">Ajouter un livre</a>
                                </nav>
                            </div>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed List" href="#" data-bs-toggle="collapse" data-bs-target="#collapseMembers" aria-expanded="false" aria-controls="collapseLayouts">
                               <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Members
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseMembers" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="Member">Liste des membres</a>
                                    <a class="nav-link" href="Member/new">Ajouter un membre</a>
                                </nav>
                            </div>
            </li>
        </ul>
    </div>
    
    
<div class="container">
<% List<Membre> Membres = (List<Membre>)request.getAttribute("membres"); %>
<form action="edit.jsp" method="get">
    <label for="searchId">Entrez ID:</label>
    <input type="text" id="searchId" name="id" placeholder="Entrez id">
    <input class="search btn btn-dark btn-sm" type="submit" value="Search">
</form> 
	 <a href="<%=request.getContextPath() + "/Member" %>/new" class="ajouter btn btn-outline-dark d-flex justify-content-center">Ajouter un membre </a>


    <div class="list">

<table border="1">
  <tr>
    <th>ID</th>
    <th>Nom</th>
    <th>L'adresse</th>
    <th>numéro de téléphone</th>
    <th>Action</th>
  </tr>
  <% for(Membre mb : Membres) { %>
  <tr>
    <td><%= mb.getId_membre() %></td>
    <td><%= mb.getNom_mb()%></td>
    <td><%= mb.getLadresse() %></td>
    <td><%= mb.getNumérotéléphone() %></td>

        <td>
         <a href="Member/edit?id=<%= mb.getId_membre() %>" style="width: 6rem;" class="bg-success badge text-wrap text-white">Edit</a>
          <a href="Member/confirmation?id=<%= mb.getId_membre() %>" style="width: 6rem;" class="bg-danger badge text-wrap text-white">Delete</a>
         </td>   
  </tr>
  <% } %>
</table>
    </div>

</div>

</body>
     <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
</html>