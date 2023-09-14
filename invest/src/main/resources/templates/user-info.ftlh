<!DOCTYPE html>
<html>
<head>
    <title>invest</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        h1, h3, h4 {
            text-align: center;
            margin: 20px 0;
            font-size: 24px; /* Задайте желаемый размер шрифта */
        }

        h1 {
            text-align: center;
            margin: 20px 0;
        }

        h3 {
            margin-top: 10px;
            text-align: center;
        }

        h4 {
            margin-top: 20px;
            text-align: center;
        }

        div {
            max-width: 600px;
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

        h2 {
            text-align: center;
            color: red;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<h1>invest</h1>
<hr>
<h3>Подробная информация о пользователе ${user.name}</h3>
<b>Номер телефона: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>Бумаги пользователя ${user.name}</h4>
<#assign totalAssets = 0> <!-- Инициализация переменной totalAssets -->
<#assign totalStocks = 0> <!-- Инициализация переменной для подсчета акций -->
<#assign totalBonds = 0> <!-- Инициализация переменной для подсчета облигаций -->
<#list products as product>
    <div>
        <p><b>${product.title}</b> | ${product.description} | ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
        <#assign totalAssets = totalAssets + product.price> <!-- Увеличение totalAssets на стоимость текущего актива -->
        <#if product.description == "акция"> <!-- Если это акция, увеличиваем счетчик акций -->
            <#assign totalStocks = totalStocks + 1>
        <#elseif product.description == "облигация"> <!-- Если это облигация, увеличиваем счетчик облигаций -->
            <#assign totalBonds = totalBonds + 1>
        </#if>
    </div>
</#list>

<#assign investmentType = "Модеративный"> <!-- Инициализация переменной investmentType -->

<#if totalStocks gt totalBonds> <!-- Если количество акций больше -->
    <#assign investmentType = "Агрессивный">
<#elseif totalBonds gt totalStocks> <!-- Если количество облигаций больше -->
    <#assign investmentType = "Консервативный">
</#if>

<#if products?size == 0> <!-- Если нет активов -->
    <h3>Активов нет</h3>
<#else> <!-- Если есть активы -->
    <h3>Общая сумма активов: ${totalAssets} руб.</h3>
    <h3>Количество акций: ${totalStocks}</h3>
    <h3>Количество облигаций: ${totalBonds}</h3>
    <h3>Инвестиционный профиль: ${investmentType}</h3>
</#if>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>