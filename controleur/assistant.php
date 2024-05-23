<?php 

    if($_SESSION['type'] == null || $_SESSION['type'] != "assistant" ){
        session_destroy();
        header("Location: ?action=defaut");
    }

    include './vue/header.html.php';

    if(isset($_POST["recherche"])){
        $recherche = $_POST['recherche'];
        $donnees = getInterventionsByMatricule($recherche);
    }else{
        $donnees = getInterventions();
    }
    if(isset($_POST["reset"])){
        header("Location: ?action=assistant");
    }


    include './vue/vueAssistant.php';
    include './vue/footer.html.php';

?>
