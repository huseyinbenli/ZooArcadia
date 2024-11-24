<?php
require "db_Connection.php";
?>

<!DOCTYPE html>
<html lang="fr">
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
    
        // Récupérer l'utilisateur par son username
        $query = "SELECT * FROM users" ;
        $stmt = $pdo->prepare($query);
        $stmt->execute();
        $users = $stmt->fetchAll(PDO::FETCH_ASSOC);
    }catch(PDOException $e){
        echo "Erreur de connexion à la base de données : " . $e->getMessage();
    }
    ?>


    <section>
        <h1 class="title">Utilisateurs</h1>
        <table class="dashboard-container">
            <tr>
                <th>Rôle</th>
                <th>Nom</th>
                <th>Prenom</th>
            </tr>
            <tr>
                <?php 
                    foreach($users as $user)
                    {
                    ?>
                <td><?php echo $user['username'] ?></td>
                <td><?php echo $user['nom'] ?></td>
                <td><?php echo $user['prenom'] ?></td>
                    <form action="delete_user.php" method="post">
                        <td><button type="submit" class="delete-btn" name="user-delete" value="<?php $user['username']; ?>">Delete</button></td>
                    </form>
            </tr>
                    <?php
                    }

                    ?>    
        </table>
    </section>

    <section class="dashboard-container">
        <h2>Ajouter un utilisateur</h2>
            <form action="formhandler.php" method="post">
                <input type="text" name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <input type="text" name="nom" placeholder="Nom" required>
                <input type="text" name="prenom" placeholder="Prenom" required>
                <input type="text" name="role_id" placeholder="Role ID" required>
                    <button class="btn">Ajouter</button>
            </form>
    </section>

</body>
</html>