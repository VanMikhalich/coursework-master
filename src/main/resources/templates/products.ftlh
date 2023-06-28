<!DOCTYPE html>
<html>
<head>
    <title>Mikhalich Shop</title>
</head>
<body>
<h1>Mikhalich Shop</h1>
<#if user.email??>
    <h3> Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти">
        <hr>
    <#if user.isAdmin()>
        <a href="/admin">Просмотр пользователей</a>
    </#if>
    </form>
<#else>
    <a href = "/login">Войти</a><hr>
</#if>
<h4>Телефоны на любой вкус!</h4>
<form action="/" method="get">
    Поиск по названию объявления: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Создать новый товар</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Название объявления: <input type="text" name="title"/><br><br>
        Описание объявления: <input type="text" name="description"/><br><br>
        Цена: <input type="number" name="price"/><br><br>
        Город: <input type="text" name="city"/><br><br>
        <input type="hidden" name="_csrf", value = "${_csrf.token}">
        <input type="submit" value="Добавить товар"/>
    </form>
</#if>
</body>
</html>