<?php

require "db_Connection.php";

try {
    $pdo = new PDO("mysql:host=$hostname;dbname=$database", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Récupérer les données du formulaire de connexion
    $usernameForm = $_POST['username'];
    $passwordForm = $_POST['password'];

    // Récupérer l'utilisateur par son username
    $query = "SELECT * FROM users WHERE username = :username";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':username', $usernameForm);
    $stmt->execute();

    // Vérifier si l'utilisateur existe
    if ($stmt->rowCount() == 1) {
        $monUser = $stmt->fetch(PDO::FETCH_ASSOC);
        $_SESSION['info'] = $monUser;


        // Vérifier si le mot de passe est correct (utiliser password_verify pour la sécurité)
        if ($passwordForm === $monUser['password']) {
            // Redirection en fonction du rôle
            switch ($monUser['role_id']) {
                case 1: // Rôle Admin
                    header('Location: dashboard_admin.php');
                    break;
                case 2: // Rôle Vétérinaire
                    header('Location: dashboard_vet.php');
                    break;
                case 3: // Rôle Employé
                    header('Location: dashboard_employe.php');
                    break;
                default:
                    echo "Rôle inconnu, redirection impossible.";
                    break;
            }
            exit(); // Important pour stopper l'exécution du script après une redirection
        } else {
            echo "Mot de passe ou nom d'utilisateur incorrect.";
        }
    } else {
        echo "Utilisateur introuvable, êtes-vous sûr de votre username ?";
    }
} catch (PDOException $e) {
    echo "Erreur de connexion à la base de données : " . $e->getMessage();
};

?>