<?php

    include_once "bd.inc.php";
    include_once "bd.intervention.php";
    include_once "bd.stats.php";

    session_start();

function logIn($matricule, $mdp) {
    $base = connexionPDO();
    $sql = "SELECT mdp FROM employes WHERE matricule = :matricule";
    $stmt = $base->prepare($sql);
    $stmt->bindParam(':matricule', $matricule);
    $stmt->execute();
    $row = $stmt->fetch(PDO::FETCH_ASSOC);

    // Debug: vérifier le mot de passe haché récupéré
    if ($row) {
        $hashedPassword = $row['mdp'];
        echo "Mot de passe haché récupéré : $hashedPassword<br>";
    } else {
        echo "Aucun utilisateur trouvé avec ce matricule.<br>";
        return "Identifiant ou mot de passe incorrect.";
    }

    // Debug: vérifier le mot de passe en clair
    echo "Mot de passe en clair fourni : $mdp<br>";

    // Vérifier le mot de passe
    if ($row && password_verify($mdp, $row['mdp'])) {
        $_SESSION['userid'] = $matricule;
        $succesMessage = "Vous êtes connecté";
        if (substr($matricule, 0, 1) == "T" || substr($matricule, 0, 1) == "t") {
            $_SESSION['type'] = "technicien";
            header("Location: ?action=accueil");
        } else {
            $_SESSION['type'] = "assistant";
            header("Location: ?action=accueil");
        }
    } else {
        echo "Mot de passe incorrect.<br>";
        return "Identifiant ou mot de passe incorrect.";
    }
}



        



    

    function logOut(){
        session_destroy();
        header("Location: ./?action=defaut");
    }



    function getClients(){

        $base = connexionPDO();
        $statement = $base->query("SELECT numero_client, email, duree_deplacement, distanceKM, raison_sociale, siren, code_ape, adresse, telephone_client, numero_agence FROM clients");
        $statement->execute();
        $resultat = $statement;

        return $resultat;
     
    }

    function getClientsBySearch($search){
        $base = connexionPDO();
        $statement = $base->query("SELECT numero_client, email, duree_deplacement, distanceKM, raison_sociale, siren, code_ape, adresse, telephone_client, numero_agence FROM clients
        WHERE numero_client LIKE '%$search%' OR email LIKE '%$search%' OR raison_sociale LIKE '%$search%' OR code_ape LIKE '%$search%' OR adresse LIKE '%$search%'
        OR telephone_client LIKE '%$search%'");
        $statement->execute();
        $resultat = $statement;

        return $resultat;

    }

    function getClientByNumClient($num){
        $base = connexionPDO();
        $statement = $base->prepare("SELECT * FROM clients WHERE numero_client = ?");
        $statement->execute([$num]);
        $resultat = $statement->fetch(PDO::FETCH_ASSOC);
    
        return $resultat;
    }

    function getMatricule(){

        $base = connexionPDO();
        $statement = $base->prepare("SELECT matricule FROM clients WHERE numero_client = ?");
        $statement->execute([$num]);
        $resultat = $statement->fetch(PDO::FETCH_ASSOC);
    
        return $resultat;

    }


    


?>