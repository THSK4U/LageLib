<%-- 
    Document   : AddMember
    Created on : Apr 3, 2024, 3:42:15 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Member</title>
    </head>
    <body>
        <h1>Add New Member</h1>
        <form action="AddMember.jsp" method="post">
            <table>
                <tr>
                    <td>Emprunt ID: </td>
                    <td>
                        <div/> Number </div>
                    </td>
                </tr>
                <tr>
                    <td>Emprunt Date: </td>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td>Date retour :</td>
                    <td>
                        <input type="integer" name="Adresse" /></td>
                </tr>
                <tr>
                    <td>ID livre:</td>
                    <td><input type="text" name="Phone" /></td>
                </tr>
                <tr>
                    <td>ID membre</td>
                    <td><input type="text" name="Phone" /></td>
                </tr>
                
                <tr>
                    <td colspan="2"><input type="submit" value="Add Member" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
