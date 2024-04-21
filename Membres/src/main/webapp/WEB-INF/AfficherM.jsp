<%@ page pageEncoding="UTF-8" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>main</title>
<link rel="stylesheet" type="text/css" href="Style.css">
<style>
/* Style.css */

/* Style du tableau */
table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

/* Style de l'en-tête du tableau */
th {
    background-color: #f2f2f2;
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

/* Style des cellules du tableau */
td {
    border: 1px solid #ddd;
    padding: 8px;
}

/* Style des lignes impaires */
tr:nth-child(odd) {
    background-color: #f9f9f9;
}

/* Style des liens dans les cellules */
a {
    text-decoration: none;
    color: #007bff;
}

</style>
</head>

<body>
    <table>
        <thead>
            <tr>
                <th>id_membre</th>
                <th>nom_mb</th>
                <th>ladresse</th>
                <th>numérotéléphone</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="room" items="${Membre}">
                <tr>
                    <td><c:out value="${room.getId_membre()}"></c:out></td>
                    <td><c:out value="${room.getNom_mb()}"></c:out></td>
                    <td><c:out value="${room.getLadresse()}"></c:out></td>
                    <td><c:out value="${room.getNumérotéléphone()}"></c:out></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>


</body>
</html>