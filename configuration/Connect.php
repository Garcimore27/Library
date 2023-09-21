<?php

class Connect{
    // Propriétés


//méthode statique permet de faire appel à une méthode sans instanciation
public static function connect(){

$db_name = 'biblioapp';
$db_user = 'root';
$db_pass = '';
$db_host = 'localhost';
$db_port = '3308';

    try {
        $db = new PDO("mysql:host=$db_host;port=$db_port;dbname=$db_name;charset=utf8", $db_user, $db_pass);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $db;
        //echo "Connexion à la base de données réussie";
    } catch (PDOException $e) {
        echo "Erreur de connexion : " . $e->getMessage();
    }
}

}

