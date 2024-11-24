<?php

// heroku
if(getenv('JAWSDB_URL') !== false){
    $dbparts = parse_url(getenv('JAWSDB_URL'));

    $hostname = $dbparts['host'];
    $username = $dbparts['user'];
    $password = $dbparts['pass'];
    $database = ltrim($dbparts['path'], '/');
} else {
    $username = 'root';
    $password = '';
    $database = 'zooarcadia';
    $hostname = 'localhost';
}


try { 
    $pdo = new PDO("mysql:host=$hostname;dbname=$database", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


} catch (PDOException $e){
    echo "Erreur de connexion à la base de données : " . $e->getMessage();

}


