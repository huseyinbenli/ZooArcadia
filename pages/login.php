<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/login.css">
    <title>Connexion</title>
</head>
<body>

    <header> 

        <?php require_once('../shared/header.php'); ?>

        <div class="header-div">
            <img class="header-img" src="../Animal Images/forest.jpg" alt="some animals in the forest">
        </div>

    </header>

    <div class="login-container">
    <h2>Connexion</h2>

    <form action="../loginPost.php" method="post">
        <div>
            <label class="user-input-label" for="username">Nom d'utilisateur :</label>
            <input  class="user-input" type="text" id="username" name="username" required >
        </div>

        <div>
            <label class="user-input-label" for="password">Mot de passe :</label>
            <input  class="user-input" type="password" id="password" name="password" required>
        </div>

        <div>
            <input class="btn" type="submit" value="Se connecter">
        </div>
    </form>
    </div>


    <?php require_once('../shared/footer.php'); ?>
    
    <script src="../script/script.js"></script>
</body>
</html>