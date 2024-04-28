<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Livre</title>
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
        .sidebar {
            position: fixed;
            left: 0;
            top: 0;
            bottom: 0;
            width: 250px;
            background-color: #343a40; /* Dark gray background */
            padding: 20px;
            overflow-y: auto;
        }.container {
            margin-left: 250px;
            padding: 20px;
        }
        
    </style>
</head>
<body>
<div class="sidebar">
        <h2 style="color: #f8f9fa;">Menu</h2> <!-- Light text color for heading -->
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link active" href="#">Dashboard</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="List">Livres</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Member">Members</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Member/">Products</a>
            </li>
            <!-- Add more menu items as needed -->
        </ul>
    </div>
    <div class="container">
        <h1>Add New Membre</h1>
        <form action="save" method="post">
            <div class="form-group">
                <label >Nom:</label>
                <input type="text" class="form-control" id="titre" name="titre">
            </div>
            <div class="form-group">
                <label >ladresse:</label>
                <input type="text" class="form-control" id="lauteur" name="lauteur">
            </div>
            <div class="form-group">
                <label >numérotéléphone:</label>
                <input type="number" class="form-control" id="lannéepublication" name="lannéepublication">
            </div>
            <button type="submit" class="btn btn-dark">Save</button>
        </form>
    </div>
</body>