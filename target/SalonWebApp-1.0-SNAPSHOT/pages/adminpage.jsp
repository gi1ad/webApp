<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Admin control panel</title>
</head>
<style>
    .header {
        display: block;
        padding-top: inherit;
        position: absolute;
        font-family: "Open Sans", serif;
        width: 500px;
    }

    .wrapper {
        width: 600px;
        height: 300px;
        padding-bottom: 200px;
        padding-top: 20px;
    }

    .main {
        width: 960px;
        margin: 0 auto;
    }

    .main-content {
        width: 600px;
        float: left;
    }

    .news-text {
        width: 100%;
        height: 150px;
        padding: 12px 20px;
        box-sizing: border-box;
        border: 2px solid #ccc;
        border-radius: 4px;
        background-color: #f8f8f8;
        font-size: 16px;
        resize: none;
    }

    .header-text {
        width: 30%;
        height: 50px;
        padding: 12px 20px;
        box-sizing: border-box;
        border: 2px solid #ccc;
        border-radius: 4px;
        background-color: #f8f8f8;
        font-size: 16px;
        resize: none;
    }
</style>
<body class="body">
<h1 style="font-family: Open Sans,serif">Welcome admin</h1>
<div class="main">
    <header class="header"></header>
    <div class="main-content">
        <div class="wrapper">
            <p style="font-family: sans-serif"> Добавить новость.</p>
            <form action="<c:url value='/adm' />" method="post">
                <p>Введите заголовок</p>
                <textarea class="header-text" name="header">Some text...</textarea>
                <p>Введите текст новости</p>
                <textarea class="news-text" name="message">Some text...</textarea>
                <p> Submit button <input type="submit" name="submit" value="submit">
                </p>
            </form>
        </div>

        <footer>

        </footer>
    </div>
</div>
</body>
</html>
