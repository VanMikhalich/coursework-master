<!DOCTYPE html>
<html>
<head>
    <title>Information</title>
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
<h1>Ivan Shop</h1><hr>
<h4>Подробная информация о товаре</h4>
<table>
    <tr>
        <th scope="col">Название товара</th>
        <th scope="col">Описание товара</th>
        <th scope="col">Цена</th>
        <th scope="col">Город</th>
        <th scope="col">Автор</th>
    </tr>
        <tr>
            <th>${product.title}</th>
            <th>${product.description}</th>
            <th>${product.price} руб.</th>
            <th>${product.city}</th>
            <th>${product.user.name}</th>
        </tr>
</table>
</body>
</html>