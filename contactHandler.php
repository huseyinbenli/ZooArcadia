<?php

if($_SERVER["REQUEST_METHOD"] == "POST"){
    $prenom = $_POST["prenom"];
    $nom = $_POST["nom"];
    $email = $_POST["email"];
    $message = $_POST["message"];    
    try {
      require_once "db_Connection.php";
  
      $query = "INSERT INTO contact (nom, Prenom, Email, Message)
                VALUES(:nom, :Prenom, :Email, :Message);";
                $stmt = $pdo->prepare($query);
                $stmt->bindParam(":nom", $nom);
                $stmt->bindParam(":Prenom", $prenom);
                $stmt->bindParam(":Email", $email);
                $stmt->bindParam(":Message", $message);
                $stmt->execute();
                header("Location: ./pages/contact.php");
    } catch (PDOException $e){
      die();
    }
  
  
  }
  else{
      header("location: ./pages/contact.php");
  }