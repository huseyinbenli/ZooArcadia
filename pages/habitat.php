<?php
require_once "../db_Connection.php";

$query1 = "SELECT * FROM habitat WHERE habitat_id = 6; ";
$stmt1 = $pdo->prepare($query1);
$stmt1->execute();
$rainforest = $stmt1->fetch(PDO::FETCH_ASSOC);

$query2 = "SELECT * FROM habitat WHERE habitat_id = 7; ";
$stmt2 = $pdo->prepare($query2);
$stmt2->execute();
$africain = $stmt2->fetch(PDO::FETCH_ASSOC);

$query3 = "SELECT * FROM habitat WHERE habitat_id = 8; ";
$stmt3 = $pdo->prepare($query3);
$stmt3->execute();
$australien = $stmt3->fetch(PDO::FETCH_ASSOC);

$query4 = "SELECT * FROM habitat WHERE habitat_id = 9; ";
$stmt4 = $pdo->prepare($query4);
$stmt4->execute();
$reptiles = $stmt4->fetch(PDO::FETCH_ASSOC);
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/habitat.css">
    <script src="../script/script.js" defer></script>

    <title>Les Habitats</title>
</head>

<body>
    <header> 
            <?php require_once('../shared/header.php'); ?>

            <div class="header-div">
            <img class="header-img" src="../Animal Images/twoCheetas.jpg" alt="">
        </div>
    </header>

    <div class="main-layout">

        <h1 class="main-h1">nos habitats</h1>

        <section class="info-section">
            <h1>Au zoo d'Arcadia, nous aimons les animaux - du plus petit lézard à la girafe la plus grande!</h1>
                <p>Le zoo d'Arcadia est un environnement idéal pour nos animaux.
                    Il offre non seulement un paradi, mais aussi une excellente plateforme
                    pour que les animaux agissent comme ambassadeurs de leurs cousins dans la nature.
                    Cela donne au zoo d'Arcadia la capacité d'éduquer le monde sur la conservation des animaux
                    et d'augmenter les chances de protéger toute la faune.
                </p>
        </section>

        <section class="section africain">
            <div class="wrapper-div">
                <img src="../Animal Images/africa.jpg" alt="">
                <h2> <?php echo $africain['name']; ?> </h2>
                <p> <?php echo $africain['description']; ?> </p>
            </div>
        </section>

        <section class="section australien">
            <div class="wrapper-div">
                <img src="../Animal Images/Kangaroo.jpg" alt="">
                <h2> <?php echo $australien['name']; ?> </h2>
                <p> <?php echo $australien['description']; ?> </p>
            </div>
        </section>

        <section class="section rainforest">
            <div class="wrapper-div">
                <img src="../Animal Images/bird.jpg" alt="">
                <h2> <?php echo $rainforest['name']; ?> </h2>
                <p> <?php echo $rainforest['description']; ?> </p>
            </div>
        </section>

        <section class="section resptiles">
            <div class="wrapper-div">
                <img src="../Animal Images/Dragon-Komodo2-1.jpg" alt="">
                <h2> <?php echo $reptiles['name']; ?> </h2>
                <p> <?php echo $reptiles['description']; ?> </p>
            </div>
        </section>
    </div>

    <?php require_once('../shared/footer.php'); ?>
    
    <script src="../script/script.js"></script>
    
</body>
</html>