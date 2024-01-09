<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Boucles</title>
</head>
<body bgcolor="white">
    <h1>Exercices sur les boucles</h1>
    <form action="#" method="post">
        <label for="inputValeur">Saisir le nombre d'étoiles : </label>
        <input type="text" id="inputValeur" name="valeur">
        <input type="submit" value="Afficher">
    </form>

    <c:if test="${not empty param.valeur}">
        <c:set var="valeur" value="${param.valeur}" />

        <p>
            <c:forEach begin="1" end="${valeur}" var="i">
                *
            </c:forEach>
        </p>

        <h2>Exercice 1 : Le carré d'étoiles</h2>
        <p>Ecrire le code afin de produire un carré d'étoile</p>
        <c:forEach begin="1" end="${valeur}" var="i">
            <c:forEach begin="1" end="${valeur}" var="j">
                *
            </c:forEach>
            <br>
        </c:forEach>

        <h2>Exercice 2 : Triangle rectangle gauche</h2>
        <p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
        <c:forEach begin="1" end="${valeur}" var="i">
            <c:forEach begin="1" end="${i}" var="j">
                *
            </c:forEach>
            <br>
        </c:forEach>

        <h2>Exercice 3 : Triangle rectangle inversé</h2>
        <p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
        <c:forEach begin="${valeur}" end="1" var="i" step="-1">
            <c:forEach begin="1" end="${i}" var="j">
                *
            </c:forEach>
            <br>
        </c:forEach>

        <h2>Exercice 4 : Triangle rectangle aligné sur la droite</h2>
        <p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
        <c:forEach begin="1" end="${valeur}" var="i">
            <c:forEach begin="1" end="${valeur-i}" var="j">
                &nbsp;&nbsp;
            </c:forEach>
            <c:forEach begin="1" end="${i}" var="k">
                *
            </c:forEach>
            <br>
        </c:forEach>

        <h2>Exercice 5 : Triangle isocele</h2>
        <p>Ecrire le code afin de produire un triangle isocèle</p>
        <c:forEach begin="1" end="${valeur}" var="i">
            <c:forEach begin="1" end="${valeur-i}" var="j">
                &nbsp;&nbsp;
            </c:forEach>
            <c:forEach begin="1" end="${2*i-1}" var="k">
                *
            </c:forEach>
            <br>
        </c:forEach>

        <h2>Exercice 6 : Le demi losange</h2>
        <p>Ecrire le code afin de produire un losange</p>
        <c:forEach begin="1" end="${valeur}" var="i">
            <c:forEach begin="1" end="${valeur-i}" var="j">
                &nbsp;&nbsp;
            </c:forEach>
            <c:forEach begin="1" end="${2*i-1}" var="k">
                *
            </c:forEach>
            <br>
        </c:forEach>
        <c:forEach begin="${valeur-1}" end="1" var="i">
            <c:forEach begin="1" end="${valeur-i}" var="j">
                &nbsp;&nbsp;
            </c:forEach>
            <c:forEach begin="1" end="${2*i-1}" var="k">
                *
            </c:forEach>
            <br>
        </c:forEach>

        <h2>Exercice 7 : La table de multiplication</h2>
        <p>Ecrire le code afin de créer une table de multiplication</p>
        <c:forEach begin="1" end="10" var="i">
            <p>${valeur} x ${i} = ${valeur * i}</p>
        </c:forEach>
    </c:if>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
