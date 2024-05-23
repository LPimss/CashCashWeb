<?php

    include './vue/header.html.php';
    if(isset($_SESSION['type'])){
        if($_SESSION['type'] == "assistant"){
            include "./vue/AccueilAssistant.php";
        }else{
            include "./vue/AccueilTechnicien.php";
        }
    }
    else{
        header('Location: ?action=connexion');
    }

    include './vue/footer.html.php';

?>
