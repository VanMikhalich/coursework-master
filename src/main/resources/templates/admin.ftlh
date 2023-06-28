<!DOCTYPE html>
<html>
<head>
    <title>Mikhalich Shop</title>
</head>
<body>
<h1>Mikhalich Shop</h1>
<hr>
<h4>Просмотр пользователей</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Номер телефона</th>
        <th>Имя</th>
        <th>Роль</th>
        <th>Подробная информация</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th>${user.name}</th>
            <th><#list user.roles as role>${role}</#list></th>
        <th><a href = "/user/${user.id}"> Подробная информация </a></th>
        </tr>
        <#else>
        <h3>Пользователей не найдено</h3>
    </#list>
</table>
</body>
</html>