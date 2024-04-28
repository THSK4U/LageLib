<%@ page import="java.util.List" %>
<%@ page import="metier.livers" %>
<%@ page import="dao.LivresDaoimpli" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Livre</title>
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
            margin-left: 250px;
            padding: 20px;
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
</body>
</html>
