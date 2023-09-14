<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../static/image/logo-0002.ico" />
    <link rel="stylesheet" href="../css/styleIndex.css" />
    <title>Инвестиционный клуб "Index"</title>
    <style>
        h1, h3, h4 {
            text-align: center;
            margin: 20px 0;
            font-size: 24px; /* Задайте желаемый размер шрифта */
        }

        body {
            background-color: #0D1218;
            color: #f1cb8d;
            font-family: Arial, sans-serif;
        }

        .buttons {
            display: flex;
            justify-content: space-between;
            width: 250px;
        }

        #call {
            color: white;
        }

        #enter, #registration {
            background-color: #f1cb8d;
            color: #0D1218;
            border-radius: 50px;
            height: 30px;
            border: none;
            margin-right: 20px;
        }

        #enter {
            width: 70px;
        }

        #registration {
            width: 150px;
        }

        #enter:hover, #registration:hover {
            background-color: #f1cb8d;
        }

        #first-slide-title {
            display: inline;
            width: 50%;
            margin-right: 0%;
        }

        #first-slide-content {
            display: flex;
        }

        #main1 {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        #main2 {
            flex: 1;
            color: white;
            text-align: center;
            width: 50%;
            margin: auto;
        }

        #main2 h1 {
            font-size: 96px;
            margin: 0px;
        }

        #main2 h2 {
            color: #f1cb8d;
        }

        #main3 {
            flex: 1;
            width: 50%;
            margin: auto;
            display: grid;
        }

        #main3 div {
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        .info {
            width: 100%;
        }

        #info1 {
            margin-top: 100px;
            text-align: center;
            font-size: 32px;
            line-height: 48px;
        }

        #info2, #info3, #info4 {
            display: flex;
            justify-content: space-between;
            align-items: center;
            height: 770px;
            border: 10px solid white;
            padding: 10px;
        }

        #info2 p, #info3 p, #info4 p {
            color: white;
            flex-basis: calc(50% - 20px);
        }

        #form {
            width: 100%;
            text-align: center;
        }

        #form input {
            width: 100px;
            height: 20px;
            border: 5px solid white;
            border-radius: 5px;
            background: transparent;
        }

        #form button {
            background-color: #f1cb8d;
            color: #0D1218;
            border-radius: 50px;
            width: 50px;
            height: 13px;
            border: none;
        }

        footer {
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
            text-align: center;
        }

    </style>
</head>
<body id="body">
<main>
    <div id ="main1">
        <div id="first-slide-title">
            <span id="free-call">Звонки по России бесплатно:</span>
            <span id="phone-number">number</span>
        </div>
        <div class="buttons">
            <button id="enter">Войти</button>
            <button id="registration">Зарегистрироваться</button>
        </div>
    </div>
    <div id="first-slide-content">
        <div id="main2">
            <h2>Инвестиционный клуб</h2>
            <h1>«INDEX»</h1>
            <h3>Профессионалы рынка акций</h3>
            <h3>на расстоянии вытянутой руки</h3>
        </div>
        <div id="main3">
            <div></div>
        </div>
    </div>
    <section class="info">
        <div id="info1">
            <p>Предоставляем вашему вниманию платформу для учета <br />и анализа инвестиционных портфелей</p>
        </div>
        <div id="info2">
            <h1>Даже если вы еще не начали инвестировать, с помощью нашего сайта вы сможете понять с чего начать.</h1>
            <h2>Специально для Вас есть функция по генерированию списка активов, подходящих именно вам, исходя из вашего бюджета и рискового профиля.</h2>
        </div>
        <div id="info3">
            <p>Когда у вас уже есть портфель со своим набором активов, мы предлагаем вам воспользоваться возможностью анализа инвестиционных портфелей: получить комментарий по структуре и составу, а также наши рекомендации.</p>
        </div>
        <div id="info4">
            <p>Дополнительно вы можете отправить заявку на разбор портфеля. Наш аналитик более подробно проанализирует ваш портфель и проведет его разбор в режиме онлайн.</p>
        </div>
    </section>
    <div>
        <form id="form">
            <div></div>
            <div>
                <p>Зарегистрируйтесь, чтобы получить все возможности уже сейчас</p>
            </div>
            <label>Имя и фамилия</label>
            <input type="text" name="fullName" required>
            <label>Почта</label>
            <input type="email" name="email" required>
            <label>Пароль</label>
            <input type="password" name="password" required>
            <label>Повторите пароль</label>
            <input type="password" name="confirmPassword" required>
            <button>Зарегистироваться</button>
        </form>
    </div>
</main>
<footer>
    <p>© 2016—2023 «invest».</p>
</footer>
</body>
</html>
