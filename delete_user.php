<?php
require "db_Connection.php";

if(isset($_POST["user-delete"])){
    $uname = $_POST["user-delete"];

    try {
        $query = "DELETE FROM users WHERE username ='$uname';";
        $stmt = $pdo->prepare($query);
        $stmt->execute();

        header('Location: dashboard_admin.php');


    } catch(PDOException $e){
        die("Query failed:" . $e->getMessage());
    }
} else {
    header('Location: dashboard_admin.php');
}


