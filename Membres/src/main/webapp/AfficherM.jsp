<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
                    <td>Member NO: </td>
                    <td>
                        <div/> Number </div>
                    </td>
                </tr>
                <tr>
                    <td>Member Name: </td>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td>Adresse :</td>
                    <td>
                        <input type="integer" name="Adresse" /></td>
                </tr>
                <tr>
                    <td>Phone NO:</td>
                    <td><input type="text" name="Phone" /></td>
                </tr>
                
                <tr>
                    <td colspan="2"><input type="submit" value="Save Changes" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
