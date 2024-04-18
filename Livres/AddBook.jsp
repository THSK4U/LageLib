<%-- 
    Document   : AddBook
    Created on : Apr 3, 2024, 3:42:15 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add A New Book</title>
    </head>
    <body>
        <h1>Add A New Book</h1>
        <form action="AddBook.jsp" method="post">
            <table>
                <tr>
                    <td>Book NO: </td>
                    <td>
                        <div> Number </div>
                    </td>
                </tr>
                <tr>
                    <td>Book Title </td>
                    <td><input type="text" name="Title" /></td>
                </tr>
                <tr>
                    <td>L'auteur</td>
                    <td><input type="text" name="author" /></td>
                </tr>
                <tr>
                    <td>Publication Year</td>
                    <td><input type="txt" name="Publication Year" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Add Book" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
