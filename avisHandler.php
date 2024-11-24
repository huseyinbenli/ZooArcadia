<?php

if($_SERVER["REQUEST_METHOD"] == "POST"){
    $prenom = $_POST["prenom"];
    $nom = $_POST["nom"];
    $email = $_POST["email"];
    $message = $_POST["message"];    
    try {
      require_once "db_Connection.php";
  
      $query = "INSERT INTO avis (nom, prenom, email, message)
                VALUES(:nom, :prenom, :email, :message);";
                $stmt = $pdo->prepare($query);
                $stmt->bindParam(":nom", $nom);
                $stmt->bindParam(":prenom", $prenom);
                $stmt->bindParam(":email", $email);
                $stmt->bindParam(":message", $message);
                $stmt->execute();
                header("Location: ./pages/avis.php");
    } catch (PDOException $e){
      die();
    }
  
  
  }
  else{
      header("location: ./pages/avis.php");
  }