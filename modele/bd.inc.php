<?php

    function connexionPDO() {
        $login = "ajqpyl_cashcash_db";
        $mdp = "fJ!1a*KEC89-_r3y";
        $bd = "ajqpyl_cashcash_db";
        $serveur = "185.207.226.14";

        try {
            $conn = new PDO("mysql:host=$serveur;dbname=$bd", $login, $mdp, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\'')); 
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $conn;
        } catch (PDOException $e) {
            print "Erreur de connexion PDO ";
            die();
        }
    }

    if ($_SERVER["SCRIPT_FILENAME"] == __FILE__) {
        // prog de test
        header('Content-Type:text/plain');

        echo "connexionPDO() : \n";
        print_r(connexionPDO());
    }
?>