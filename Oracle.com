<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oracle Cloud Sign In</title>
    <style>
        /* Общие стили */
        body {
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #000;
            background-color: #fff;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .main-container {
            padding: 40px 25px;
            max-width: 450px;
            flex-grow: 1;
        }

        /* Логотип */
        .logo-section {
            margin-bottom: 45px;
        }

        .logo-oracle {
            font-size: 32px;
            font-weight: 700;
            letter-spacing: 1.5px;
            text-transform: uppercase;
            line-height: 1;
        }

        .logo-cloud {
            font-size: 22px;
            font-weight: 400;
            margin-top: 5px;
            display: block;
        }

        /* Форма */
        .form-group {
            margin-bottom: 25px;
        }

        .label-container {
            display: flex;
            align-items: center;
            font-weight: 600;
            font-size: 17px;
            margin-bottom: 12px;
        }

        .help-badge {
            background: #000;
            color: #fff;
            border-radius: 50%;
            width: 18px;
            height: 18px;
            font-size: 12px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            margin-left: 8px;
            cursor: pointer;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #858585;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
            outline: none;
        }

        /* Кнопки */
        .btn-next {
            background-color: #8c8c8c; /* Характерный серый цвет */
            color: white;
            border: none;
            padding: 10px 24px;
            border-radius: 4px;
            font-size: 15px;
            cursor: pointer;
            margin-bottom: 30px;
        }

        .btn-signup {
            background-color: transparent;
            border: 1px solid #000;
            padding: 8px 20px;
            border-radius: 6px;
            font-size: 15px;
            font-weight: 500;
            cursor: pointer;
        }

        /* Текст и ссылки */
        .forgot-text {
            font-size: 17px;
            margin-bottom: 40px;
        }

        .forgot-text a {
            color: #006699;
            text-decoration: none;
        }

        .divider {
            border: 0;
            border-top: 1px solid #e0e0e0;
            margin: 40px 0;
        }

        .signup-section h3 {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 15px;
        }

        /* Нижний промо-баннер */
        .promo-footer {
            background: linear-gradient(135deg, #164032 0%, #25614d 100%);
            color: white;
            padding: 40px 25px;
        }

        .promo-footer h2 {
            font-size: 24px;
            margin: 0 0 15px 0;
            line-height: 1.2;
            font-weight: 500;
        }

        .promo-footer p {
            font-size: 16px;
            line-height: 1.5;
            margin: 0;
            opacity: 0.9;
        }

        /* Адаптив под мобильные устройства */
        @media (max-width: 480px) {
            .main-container {
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>

    <div class="main-container">
        <!-- Блок Логотипа -->
        <div class="logo-section">
            <div class="logo-oracle">ORACLE</div>
            <div class="logo-cloud">Cloud</div>
        </div>

        <!-- Поле ввода -->
        <div class="form-group">
            <div class="label-container">
                Cloud Account Name
                <span class="help-badge" title="Help">?</span>
            </div>
            <input type="text" id="accountName" autocomplete="off">
        </div>

        <button class="btn-next">Next</button>

        <p class="forgot-text">
            Forgot your cloud account name? <a href="#">Open a live chat</a>
        </p>

        <hr class="divider">

        <!-- Секция регистрации -->
        <div class="signup-section">
            <h3>Not an Oracle Cloud customer yet?</h3>
            <button class="btn-signup">Sign Up</button>
        </div>
    </div>

    <!-- Баннер в футере -->
    <footer class="promo-footer">
        <h2>AI in Action: 10 Cutting-Edge Innovations to Explore Now</h2>
        <p>Discover 10 groundbreaking AI-driven technologies that are reshaping how organizations perform maintenance, engage</p>
    </footer>

</body>
</html>
