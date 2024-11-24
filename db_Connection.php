
<?php
$mysqlDsn = 'mysql:host=localhost;dbname=zooarcadia';
$username = 'root';
$password = '';

try { 
    $pdo = new PDO($mysqlDsn, $username, $password);

    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


} catch (PDOException $e){
    echo "Erreur de connexion à la base de données : " . $e->getMessage();

}


