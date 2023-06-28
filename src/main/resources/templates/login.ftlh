
<!DOCTYPE html>
<html>
<head>
    <title>Mikhalich</title>
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
    .lf--sub {
            text-align: center;
            display: block;
            padding: 1em;
            width: 100%;

            background: linear-gradient(to right,
                    rgb(4, 4, 4),
                    rgb(44, 44, 44));
            border: 0;
            color: #fff;
            cursor: pointer;
            font-size: .70em;
            font-weight: 600;
            text-shadow: 0 1px 0 rgba(black, .2);

            &:focus {
                outline: none;
                transition: transform .15s ease;
                transform: scale(1.1);
            }
        }
    .flex-row {
            display: flex;
            margin-bottom: 1em;
        }
</style>
<body>
<h1>Mikhalich</h1><hr>
<h4>Авторизация</h4>
<form action="/login" method="post">
    Эл. почта: <input type="email" name="username"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" class = 'lf--sub' value="Вход"/>
</form>
<a href="/registration" class='lf--sub' >Зарегистрироваться</a>
</body>
</html>