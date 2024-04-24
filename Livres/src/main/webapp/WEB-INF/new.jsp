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
        
    </style>
</head>
<body>
    <div class="container">
        <h1>Add New Livre</h1>
        <form action="save" method="post">
            <div class="form-group">
                <label >Titre:</label>
                <input type="text" class="form-control" id="titre" name="titre">
            </div>
            <div class="form-group">
                <label >L'auteur:</label>
                <input type="text" class="form-control" id="lauteur" name="lauteur">
            </div>
            <div class="form-group">
                <label >L'année de publication:</label>
                <input type="number" class="form-control" id="lannéepublication" name="lannéepublication">
            </div>
            <button type="submit" class="btn btn-dark">Save</button>
        </form>
    </div>
</body>
</html>
