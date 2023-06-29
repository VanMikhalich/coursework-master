<!DOCTYPE html>
<html>
<head>
    <title>Admin page</title>
</head>
<style>
body {
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        position: relative;

        background: rgb(186, 180, 180);
        font-family: 'Roboto', helvetica, arial, sans-serif;
        font-size: 1.5em;
    }
    table {
        border-collapse: separate;
        text-align: center;
        border-spacing: 5px;
        background: #ece9e0;
        border: 16px solid #ece9e0;
    }
    th {
        background: #f5d7bf;
        padding: 10px;
    }
</style>
<body>
<h1>Ivan Shop</h1>
<hr>
<h3>Просмотр пользователей</h3>
<table>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Email</th>
        <th scope="col">Номер телефона</th>
        <th scope="col">Имя</th>
        <th scope="col">Роль</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.id}</th>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th>${user.name}</th>
            <th><#list user.roles as role>${role}</#list></th>
        </tr>
        <#else>
        <h3>Пользователей не найдено</h3>
    </#list>
</table>
</body>
</html>