<!DOCTYPE html>
<html>
<head>
    <title>Main</title>
</head>
<style>
    body {
        background: rgb(186, 180, 180);
        font-family: 'Roboto', helvetica, arial, sans-serif;
        font-size: 1.5em;
    }
    .button {
        color: #ffffff;
        background-color: black;
        text-decoration: none;
        border-radius: 5px;
    }
    .button:hover {
        color: black;
        background-color: #ffffff
    }

    .hrefs{
        color: #ffffff;
        background-color: #808080;
        text-decoration: none;
        border-radius: 5px;
    }
    .hrefs:hover {
        color: #808080;
        background-color: #ffffff;
    }
</style>
<body>
<h1 align = "center">Ivan Shop</h1>
<#if user.email??>
    <h3> Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" class = 'button' value="Выйти">
        <hr>
    <#if user.isAdmin()>
        <a class = 'hrefs' href="/admin">Просмотр пользователей</a>
        <hr>
    </#if>
    </form>
<#else>
    <a href = "/login" class = 'button' >Войти</a><hr>
</#if>
<h4>Телефоны на любой вкус!</h4>
<form action="/" method="get">
    Поиск по названию объявления: <input type="text" name="title"><br>
    <input type="submit" class = 'button' value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a class = 'hrefs' href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<hr>
<#if user.email??>
    <hr>
    <h3>Создать новый товар</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Название объявления: <input type="text" name="title"/><br><br>
        Описание объявления: <input type="text" name="description"/><br><br>
        Цена: <input type="number" name="price"/><br><br>
        Город: <input type="text" name="city"/><br><br>
        <input type="hidden" name="_csrf", value = "${_csrf.token}">
        <input type="submit" class = 'button' value="Добавить товар"/>
    </form>
</#if>
</body>
</html>