<?php
require "db_Connection.php";
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;1,300;1,400;1,500&display=swap" rel="stylesheet">
    <title>Tableau de bord</title>
    <link rel="stylesheet" href="./css/dashboard.css">
</head>
<body>
<div class="dashboard-container">
    <h2>Bienvenue sur votre tableau de bord</h2>
    <p>Vous pouvez maintenant accéder à toutes les fonctionnalités.</p>
    <a href="logout.php">Se déconnecter</a> 
</div><br>

<?php


try{
    $pdo = new PDO("mysql:host=$hostname;dbname=$database", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $query = "SELECT name, diet FROM animals;";
    $stmt = $pdo->prepare($query);
    $stmt->execute();
    $animals = $stmt->fetchAll(PDO::FETCH_ASSOC);

}catch(PDOException $e){
    echo "Erreur de connexion à la base de données : " . $e->getMessage();
}
?>

    <section>
        <h1 class="title">Les Animaux</h1>
        <table class="dashboard-container">
            <tr>
                <th>Nom</th>
                <th>Diet</th>
            </tr>
            <tr>
                <?php 
                    foreach($animals as $animal)
                    {
                    ?>
                <td><?php echo $animal['name'] ?></td>
                <td><?php echo $animal['diet'] ?></td>

            </tr>
                    <?php
                    }

                    ?>    
        </table>
    </section>

  

</body>
</html>