<?php

function controleurPrincipal($action) {
    $lesActions = array();
    $lesActions["defaut"] = "accueil.php";
    $lesActions['connexion'] = "connexion.php";
    $lesActions["deco"] = "deconnexion.php";
    $lesActions["assistant"] = "assistant.php";
    $lesActions["tbClients"] = "tableClients.php";
    $lesActions["details"] = "detailsClient.php";
    $lesActions["accueil"] = "accueil.php";
    $lesActions["inter"] = "interventionsAffectes.php";
    $lesActions["editerInterventions"] = "editerInterventions.php";
    $lesActions["updateInterventions"] = "updateInterventions.php";
    $lesActions["validerInterventions"] = "validerInterventions.php";
    $lesActions["stats"] = "stats.php";
    $lesActions["generer"] = "generer.php";









    if (array_key_exists($action, $lesActions)) {
        return $lesActions[$action];
    } else {
        return $lesActions["defaut"];
    }
}
?>