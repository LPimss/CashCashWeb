<?php
    include './vue/header.html.php';
    //error_reporting(0);
    $result = getNumIntervention();

    
    if(isset($_POST['numero_intervention'])) {
        include_once "./modele/bd.generer.php";     
    }
        
    include './vue/vueGenerer.php';
    include './vue/footer.html.php';
?>