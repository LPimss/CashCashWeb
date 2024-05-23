<?php

    include './vue/header.html.php';
    if(isset($_SESSION['type'])){
        
    header('Location: ?action=');
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $matricule = $_POST['matricule'];
        $mdp = $_POST['mdp'];

        logIn($matricule, $mdp);

        if (empty($matricule) || empty($mdp)) {
            $erreur = "Tous les champs doivent être remplis.";
        }

        if (isset($erreur)) {
            echo '<p style="color: red;">' . $erreur . '</p>';
        }

        if (isset($succesMessage)) {
            echo '<p style="color: green;">' . $succesMessage . '</p>';
        }
    
    }

    include './vue/vueConnexion.php';
    include './vue/footer.html.php';


?>