<?php 

    include './vue/header.html.php';


     $mat = $_SESSION['userid'] ;

        if(isset($_POST["recherche"])){
            $recherche = $_POST["recherche"];
            $resultat = getInterventionsBySearchAndMatricule($recherche, $mat);
        }else{
            $resultat = getInterventionsByMatricule2($mat);
        }

    include './vue/vueInterventionsAffectes.php';
    include './vue/footer.html.php';


?>