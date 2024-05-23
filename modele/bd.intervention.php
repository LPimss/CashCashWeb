<?php


function getInterventionsByMatricule($recherche) {
    $base = connexionPDO();
    $query = "SELECT * FROM interventions i WHERE i.numero_intervention = :Ninter OR i.matricule = :Ninter";
    $statement = $base->prepare($query);
    $statement->bindParam(':Ninter', $recherche);
    
    if (!$statement->execute()) {
        $errorInfo = $statement->errorInfo();
        error_log("Erreur SQL : " . $errorInfo[2]);
        return false;
    }
    
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}


function getInterventions(){

    $base = connexionPDO();
    $statement = $base->query("SELECT i.numero_intervention, i.date_visite, i.heure_visite, i.matricule FROM interventions i");
    $statement->execute();
    $resultat = $statement;
    return $resultat;

}

function getInterventionsBySearchAndMatricule($recherche, $mat){

    $base = connexionPDO();
    $statement = $base->prepare("SELECT i.numero_intervention, i.date_visite, i.heure_visite, c.adresse 
    FROM techniciens t 
    JOIN interventions i ON i.matricule = t.matricule 
    JOIN clients c ON c.numero_client = i.numero_client 
    LEFT JOIN controlers con ON con.numero_intervention = i.numero_intervention 
    WHERE t.matricule = :Mat 
      AND i.numero_intervention = :Ninter 
      AND con.temps_passe IS NULL");
    $statement->bindParam(':Ninter', $recherche);
    $statement->bindParam(':Mat', $mat);
    $statement->execute();
    $resultat = $statement;
    
    return $resultat;
    
    }

    function getInterventionsByMatricule2($mat){
        $base = connexionPDO();
        $statement = $base->prepare("SELECT i.numero_intervention, i.date_visite, i.heure_visite, c.adresse 
        FROM techniciens t 
        JOIN interventions i ON i.matricule = t.matricule 
        JOIN clients c ON c.numero_client = i.numero_client 
        LEFT JOIN controlers con ON con.numero_intervention = i.numero_intervention 
        WHERE t.matricule = :Mat AND con.temps_passe IS NULL");
        $statement->bindParam(':Mat', $mat);
        $statement->execute();
        $resultat = $statement->fetchAll(PDO::FETCH_ASSOC);
            
        return $resultat;
    }
    
function getInterventionById($id){
    $base = connexionPDO();
    $statement = $base->prepare("SELECT interventions.*, controlers.commentaire, controlers.temps_passe 
    FROM interventions 
    LEFT JOIN controlers ON controlers.numero_intervention = interventions.numero_intervention 
    WHERE interventions.numero_intervention = :Ninter");
    $statement->bindParam(':Ninter', $id);
    $statement->execute();
    $resultat = $statement->fetch(PDO::FETCH_ASSOC);

    return $resultat;

}

function getMatriculesById($id){
    $base = connexionPDO();
    $queryMatricules = "SELECT matricule FROM interventions WHERE numero_intervention = :id;";
    $statement = $base->prepare($queryMatricules);
    $statement->bindParam(':id', $id);
    $statement->execute();
    $matricules = $statement->fetchAll(PDO::FETCH_COLUMN);

    return $matricules;
}

function getMatricules(){

    $base = connexionPDO();
    $queryMatricules = "SELECT matricule FROM techniciens";
    $statement = $base->prepare($queryMatricules);
    $statement->execute();
    $matricules = $statement->fetchAll(PDO::FETCH_COLUMN);

    return $matricules;
}

function getlisteSN(){
    $base = connexionPDO();
    $query = "SELECT DISTINCT numero_de_serie FROM materiels;";
    $statement = $base->prepare($query);
    $statement->execute();
    $listeSN = $statement->fetchAll(PDO::FETCH_COLUMN);

    return $listeSN;
}

function validerInterventions($id,$tPasse,$com,$SN){
    $base = connexionPDO();
    $query = "INSERT INTO controlers (numero_intervention,numero_de_serie,temps_passe,commentaire) VALUES (:id, :SN , :tPasse, :com);";
    $statement = $base->prepare($query);
    $statement->bindParam(':id', $id);
    $statement->bindParam(':SN', $SN);
    $statement->bindParam(':tPasse', $tPasse);
    $statement->bindParam(':com', $com);
    $statement->execute();
    $resultat = $statement;
}

function getNumIntervention(){

    $base = connexionPDO();
    $query = "SELECT numero_intervention FROM controlers";
    $statement = $base->prepare($query);
    $statement->execute();
    $resultat = $statement;

    return $resultat;

}

?>