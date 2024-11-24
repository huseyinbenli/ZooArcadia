

<?php
$mysqlDsn = 'mysql:host=localhost;dbname=zoo';
$username = 'root';
$password = '';

try { 
    $pdo = new PDO($mysqlDsn, $username, $password);

    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch(PDOException $PDOException) {
    echo 'impossible de se connecter à la base de données';
    echo  $PDOException;

}


