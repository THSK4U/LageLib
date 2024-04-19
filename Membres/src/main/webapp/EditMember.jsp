<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit A Member</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <br>
    <h1 class="text-center">Edit A Member</h1>
    <br>
    <br>
    <form action="AddMember.jsp" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Member No:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="memberNo" name="memberNo" readonly value="12345">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Member Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="memberName" name="name" placeholder="Last Name">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Address:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="adresse" name="address" placeholder="Original Address">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Phone No:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="phoneNo" name="phone" placeholder="Original Phone No">
            </div>
        </div>
        <div class="form-group row justify-content-center">
            <div class="col-sm-6">
                <input type="submit" class="btn btn-primary btn-block" value="Save Changes">
            </div>
        </div>
    </form>
</div>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
