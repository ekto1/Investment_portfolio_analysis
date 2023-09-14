<!DOCTYPE html>
<html>
<head>
    <title>invest</title>
    <style>
        h1, h3, h4 {
            text-align: center;
            margin: 20px 0;
            font-size: 24px; /* Задайте желаемый размер шрифта */
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        h1 {
            text-align: center;
            margin: 20px 0;
        }

        hr {
            border: none;
            border-top: 1px solid #ccc;
            margin: 20px 0;
        }

        h3 {
            margin-top: 10px;
        }

        h4 {
            margin-top: 20px;
        }

        form {
            width: 400px;
            margin: 0;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        div {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 15px;
        }

        b {
            font-weight: bold;
        }

        p {
            margin: 0;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            margin-top: 10px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        input[type="text"],
        input[type="number"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
    </style>
</head>
<body>
<div style="display: flex; justify-content: flex-start; align-items: flex-start; flex-wrap: wrap; padding: 20px;">
    <div style="flex: 1; margin-right: 20px;">
        <h1>invest</h1>
        <hr>
        <#if user.email??>
            <h3>Имя пользователя: <i>${user.name}</i></h3>
            <form action="/logout" method="post">
                <input type="submit" value="Выйти"/>
            </form>
            <#if user.isAdmin()>
                <a href="/admin">Панель администратора</a>
            </#if>
        <#else>
            <a href="/login">Войти</a>
        </#if>
    </div>
    <div style="flex: 1;">
        <h4>Портфель ценных бумаг</h4>
        <h4>Рекомендуемые бумаги</h4>
        <form action="/" method="get">
            Поиск акций: <input type="text" name="title">
            <input type="submit" value="Поиск"/>
        </form>
        <#list products as product>
            <div>
                <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
            </div>
        <#else>
            <h3>Рекомендуемые бумаги</h3>
        </#list>
        <#if user.email??>
            <hr>
            <h3>Добавить актив</h3>
            <form action="/product/create" method="post" enctype="multipart/form-data">
                Компания: <input type="text" name="title"/><br><br>
                Тип актива (акция/облигация): <input type="text" name="description"/><br><br>
                Цена: <input type="number" name="price"/><br><br>
                Дата покупки: <input type="text" name="city"/><br><br>

                <input type="submit" value="Добавить ценную бумагу"/>
            </form>
        </#if>
    </div>
</div>
</body>
</html>
