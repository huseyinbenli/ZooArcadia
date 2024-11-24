<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/services.css">
    <title>Services</title>
</head>
<body>
        <header> 

              <?php require_once('../shared/header.php'); ?>

            <div class="header-div">
                 <img class="header-img" src="../Animal Images/banner.jpg" alt="">
            </div>
        </header>

        <div class="main-layout">

        <h1 class="h1">nos services</h1>
        <?php
require_once "../db_Connection.php";

$query1 = "SELECT * FROM service WHERE service_id = 7; ";
$stmt1 = $pdo->prepare($query1);
$stmt1->execute();
$result1 = $stmt1->fetch(PDO::FETCH_ASSOC);
?>

<?php
$query2 = "SELECT * FROM service WHERE service_id = 8; ";
$stmt2 = $pdo->prepare($query2);
$stmt2->execute();
$result2 = $stmt2->fetch(PDO::FETCH_ASSOC);
?>

<?php
$query3 = "SELECT * FROM service WHERE service_id = 9; ";
$stmt3 = $pdo->prepare($query3);
$stmt3->execute();
$result3 = $stmt3->fetch(PDO::FETCH_ASSOC);
?>

        <section class="guide-section">
            <div class="guide-div">
                <img class="img" src="../Animal Images/guided.jpg" alt="Les visiteur autour d'un guide">
                <h2><?php echo $result1['name']; ?></h2>
                <p> <?php echo $result1['description']; ?></p>
            </div>
        </section>

        <section class="train-section">
            <div class="train-div">
                <img class="img" src="../Animal Images/train.jpg" alt="Un train aves des passagers">
                <h2> <?php echo $result2['name']; ?> </h2>
                <p> <?php echo $result2['description']; ?> </p>
            </div>
        </section>

        <section class="restaurant-section">
            <div class="restaurant-div">
                <img class="img" src="../Animal Images/Restaurant.jpg" alt="Image de restaurant">
                <h2> <?php echo $result3['name']; ?> </h2>
                <p> <?php echo $result3['description']; ?> </p>
            </div>
        </section>




        </div>

    <?php require_once('../shared/footer.php'); ?>   
    <script src="../script/script.js"></script>
</body>
</html>