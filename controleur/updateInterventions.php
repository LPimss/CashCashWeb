<?php


if(isset($_POST['id'])){

    $id = $_POST['id'];
    $date_visite = $_POST['date_visite'];
    $heure_visite = $_POST['heure_visite'];
    $matricule = $_POST['matricule'];
    $temps_passe = $_POST['temps_passe'];
    $commentaire = $_POST['commentaire'];

    $base = connexionPDO();

    $query = 'UPDATE interventions SET date_visite = :date_visite, heure_visite = :heure_visite, matricule = :matricule';
    $query .= ' WHERE numero_intervention = :Ninter';
    $statement = $base->prepare($query);
    $statement->bindParam(':Ninter', $id);
    $statement->bindParam(':date_visite', $date_visite);
    $statement->bindParam(':heure_visite', $heure_visite);
    $statement->bindParam(':matricule', $matricule);
    $statement->execute();

    // Mise à jour des données dans la table controlers uniquement si les variables sont définies
    if(isset($temps_passe) && isset($commentaire)){
        $query_controlers = 'UPDATE controlers SET temps_passe = :temps_passe, commentaire = :commentaire WHERE numero_intervention = :Ninter';
        $statement_controlers = $base->prepare($query_controlers);
        $statement_controlers->bindParam(':Ninter', $id);
        $statement_controlers->bindParam(':temps_passe', $temps_passe);
        $statement_controlers->bindParam(':commentaire', $commentaire);
        $statement_controlers->execute();
    }

    // Redirigez l'utilisateur vers une page de confirmation ou une autre page appropriée
    header('Location: ?action=editerInterventions&id=' . $id);
    exit();
}




?>