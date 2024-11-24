<?php
require "db_Connection.php";

if(isset($_POST["animal-delete"])){
    $uname = $_POST["animal-delete"];

    try {
        $query = "DELETE FROM animals WHERE name ='$uname';";
        $stmt = $pdo->prepare($query);
        $stmt->execute();

        header('Location: dashboard_vet.php');


    } catch(PDOException $e){
        die("Query failed:" . $e->getMessage());
    }
} else {
    header('Location: dashboard_vet.php');
}


