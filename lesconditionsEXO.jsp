<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>les conditions</title>
</head>
<body bgcolor="white">
    <h1>Exercices sur les conditions</h1>
    <form action="#" method="post">
        <p>Saisir la valeur A : <input type="text" name="valeurA"></p>
        <p>Saisir la valeur B : <input type="text" name="valeurB"></p>
        <p>Saisir la valeur C : <input type="text" name="valeurC"></p>
        <input type="submit" value="Afficher">
    </form>

    <%-- Récupération des valeurs --%>
    <% String valeurA = request.getParameter("valeurA"); %>
    <% String valeurB = request.getParameter("valeurB"); %>
    <% String valeurC = request.getParameter("valeurC"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeurA != null && valeurB != null && valeurC != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeurA = Integer.parseInt(valeurA); %>
        <% int intValeurB = Integer.parseInt(valeurB); %>
        <% int intValeurC = Integer.parseInt(valeurC); %>

        <%-- Condition if pour vérifier si C est compris entre A et B --%>
        <% if (intValeurC >= intValeurA && intValeurC <= intValeurB) { %>
            <p>Oui, C est compris entre A et B.</p>
        <% } else { %>
            <p>Non, C n'est pas compris entre A et B.</p>
        <% } %>
    <% } %>

    <h2>Exercice 2 : Pair ou Impair ?</h2>
    <p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
