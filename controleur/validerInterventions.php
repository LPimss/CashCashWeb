<?php

include './vue/header.html.php';


$mat = $_SESSION['userid'] ;

   if(isset($_POST["recherche"])){
       $recherche = $_POST["recherche"];
       $resultat = getInterventionsBySearchAndMatricule($recherche, $mat);
   }else{
       $resultat = getInterventionsByMatricule2($mat);
   }

$id = $_GET["id"];
$listeSN = getlisteSN();


    if(isset($_POST['tPasse']) && isset($_POST['com'])){

    $tPasse=$_POST['tPasse'];
    $com=$_POST['com'];
    $SN=$_POST['SN'];

    validerInterventions($id,$tPasse,$com,$SN);

        header('Location: ?action=inter');
    }


include './vue/vueValider.php';
include './vue/footer.html.php';
?>