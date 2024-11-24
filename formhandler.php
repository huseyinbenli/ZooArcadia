<?php 

if($_SERVER["REQUEST_METHOD"] == "POST"){
  $uname = $_POST["username"];
  $pwd = $_POST["password"];
  $nom = $_POST["nom"];
  $prenom = $_POST["prenom"];
  $role_id = $_POST["role_id"];
  
  try {
    require_once "db_Connection.php";

    $query = "INSERT INTO users (username, password, nom, prenom, role_id)
              VALUES(:username, :password, :nom, :prenom, :role_id);";
              $stmt = $pdo->prepare($query);
              $stmt->bindParam(":username", $uname);
              $stmt->bindParam(":password", $pwd);
              $stmt->bindParam(":nom", $nom);
              $stmt->bindParam(":prenom", $prenom);
              $stmt->bindParam(":role_id", $role_id);
              $stmt->execute();
              header("Location: ./pages/login.php");
  } catch (PDOException $e){
    die("Query failed: Rôle ID: 2 pour le vétérinaire et 3 pour l'employé " );
  }



}
else{
    header("location: ./pages/login.php");
}