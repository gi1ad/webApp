<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

<style>
    header{
        margin-left: -10px;
        position: relative;
        display: block;
        width: 105%;
        background: #3f4c6b;
        color: white;
        height: 90px;
        margin-top: -10px;
    }

    .logo {
        margin-top: 30px;
        position: absolute;
        left: 15px;

    }

    .logo2 {
        text-decoration: none;
        font-family: Open Sans, sans-serif;
        color: white;
        font-size: 15px;
    }

    nav,
    nav ul,
    nav ul li {
        margin: 0;
        padding: 0;
    }

    nav {
        position: absolute;
        top: 40%;
        right: 300px;
    }

    ul li {
        list-style-type: none;
        display: inline-block;
        margin-right: 10px;
    }

    li a {
        padding: 16px;
        text-decoration: none;
        font-family: Open Sans, sans-serif;
        color: white;
        font-size: 15px;
        line-height: normal;
    }

    li a:hover {
        background-color: #3f4c6b;
        color: #0077c8;
        text-decoration: none;
    }

    footer {
        margin-top: 90%;
        position: relative;
        width: 100%;
        height: 172px;
    }

</style>

    <title>Салон красоты Цирюльня - официальный сайт</title>

</head>
<body>
<header>
    <div class="logo">
        <a class="logo2" href="/" style="text-decoration: none "> Парикмахерский салон цирюльня </a>
    </div>

    <nav>
        <ul>
            <li class='first'>
                <a href="#">О нас</a>
            </li>
            <li class='second'>
                <a href="#">Услуги и цены</a>
            </li>
            <li class='third'>
                <a href="/news">Новости</a>
            </li>
            <li class='four'>
                <a href="#">Цены</a>
            </li>
            <li class='five'>
                <a href="#">Контакты</a>
            </li>
        </ul>
    </nav>
</header>
<div class="main-content">
    Main content here.
</div>
<footer>
    footer
</footer>

</body>
</html>