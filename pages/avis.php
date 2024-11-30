<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/contact.css">
    <script src="../script/script.js" defer></script>
    <title>Avis</title>
</head>
<body>
<header> 

        <?php require_once('../shared/header.php'); ?>


        <div class="header-div">
            <img class="header-img" src="../Animal Images/butterfly.jpg" alt="a butterfly">
        </div>
    </header>


    <section>
        <div>
            <h1>Laissez-nous votre avis</h1>
        </div>


        <div>
            <form action="../avisHandler.php" method="post"  class="contact-div">          
                <div class="input-group">
                    <label class="user-input-label" for="name">Prenom :</label>
                    <input class="user-input" type="text" id="name" name="prenom" required >
                </div>  

                <div class="input-group">
                    <label class="user-input-label" for="surname">Nom :</label>
                    <input class="user-input" type="text" id="surname" name="nom" required>
                </div> 

                <div class="input-group">
                    <label class="user-input-label" for="email">Email :</label>
                    <input class="user-input" type="text" id="email" name="email" required>
                </div>  

                <div class="input-group">
                    <label class="user-input-label" for="message">Votre Message :</label>
                    <textarea class="user-input" name="message" id="message" rows="10" cols="50"></textarea>
                </div>

                <div class="input-group">
                    <input class="btn" type="submit" value="Envoyer">
                </div>
                
            </form>   
        </div>
    </section>

    <?php require_once('../shared/footer.php'); ?>
    
    <script src="../script/script.js"></script>
    
</body>
</html>