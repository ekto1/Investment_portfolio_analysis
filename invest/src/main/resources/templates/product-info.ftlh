<!DOCTYPE html>
<html>
<head>
    <title>invest</title>
</head>
<body>
<h1>invest</h1><hr>
<h4>Подробная информация о товаре</h4>
<b>Компания: </b>${product.title}<br>
<b>Количество: </b>${product.description}<br>
<b>Цена: </b>${product.price}<br>
<b>Владелец: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
</body>
</html>