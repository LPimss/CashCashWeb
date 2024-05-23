<?php

    include_once 'bd.inc.php';

    function getTotalAgence(){
        $base = connexionPDO();
        try {
            $query = "SELECT count(numero_agence) AS total_agences FROM agences";
            $statement = $base->prepare($query);
            $statement->execute();
            $resultat = $statement->fetch(PDO::FETCH_ASSOC);
        
            if ($resultat) {
                echo $resultat['total_agences'];
            } else {
                echo "0";
            }
        } catch (PDOException $e) {
            echo "Erreur de requête : " . $e->getMessage();
        }
        

    }

    function getTotalClients(){
        $base = connexionPDO();
        try {
            $query = "SELECT count(numero_client) AS total_clients FROM clients";
            $statement = $base->prepare($query);
            $statement->execute();
            $resultat = $statement->fetch(PDO::FETCH_ASSOC);
        
            if ($resultat) {
                echo $resultat['total_clients'];
            } else {
                echo "0";
            }
        } catch (PDOException $e) {
            echo "Erreur de requête : " . $e->getMessage();
        }
        

    }

    function getTotalContratsByType($type){
        $base = connexionPDO();
        try {
            $query = "SELECT count(numero_de_contrat) AS total_contrats FROM contrat_de_maintenances WHERE reference_type_contrat = :type";
            $statement = $base->prepare($query);
            $statement->bindParam(':type', $type);
            $statement->execute();
            $resultat = $statement->fetch(PDO::FETCH_ASSOC);
        
            if ($resultat) {
                echo $resultat['total_contrats'];
            } else {
                echo "0";
            }
        } catch (PDOException $e) {
            echo "Erreur de requête : " . $e->getMessage();
        }
        

    }

    function getTypeContrat(){
        $base = connexionPDO();  
        try {
            $query = "SELECT reference_type_contrat FROM type_contrats";
            $statement = $base->prepare($query);
            $statement->execute();
            $resultats = $statement->fetchAll(PDO::FETCH_ASSOC); 
    
            if ($resultats) {
                return $resultats; 
            } else {
                return []; 
            }
        } catch (PDOException $e) {
            echo "Erreur de requête : " . $e->getMessage();
            return []; 
        }
    }

    function getTotalInterByTechnicien($tech){
        $base = connexionPDO();
        try {
            $query = "SELECT count(c.numero_intervention) AS total_inter FROM controlers c, interventions i WHERE c.numero_intervention=i.numero_intervention AND i.matricule = :mat ";
            $statement = $base->prepare($query);
            $statement->bindParam(':mat', $tech); // Correction du paramètre
            $statement->execute();
            $resultat = $statement->fetch(PDO::FETCH_ASSOC);
        
            if ($resultat) {
                echo $resultat['total_inter'];
            } else {
                echo "0";
            }
        } catch (PDOException $e) {
            echo "Erreur de requête : " . $e->getMessage();
        }
    }
    
    function getTechnicien(){
        $base = connexionPDO();  
        try {
            $query = "SELECT e.nom_employe, e.prenom_employe, e.matricule FROM employes e, techniciens t WHERE t.matricule = e.matricule ";
            $statement = $base->prepare($query);
            $statement->execute();
            $resultats = $statement->fetchAll(PDO::FETCH_ASSOC); 
    
            if ($resultats) {
                return $resultats; 
            } else {
                return []; 
            }
        } catch (PDOException $e) {
            echo "Erreur de requête : " . $e->getMessage();
            return []; 
        }
    }

    function getClientWithMostInterventions() {
        $base = connexionPDO();
        try {
            $query = "SELECT c.numero_client, COUNT(i.numero_intervention) AS total_interventions 
                      FROM clients c
                      JOIN interventions i ON c.numero_client = i.numero_client
                      GROUP BY c.numero_client
                      ORDER BY total_interventions DESC
                      LIMIT 1";
            $statement = $base->prepare($query);
            $statement->execute();
            $resultat = $statement->fetch(PDO::FETCH_ASSOC);
        
            if ($resultat) {
                return $resultat;
            } else {
                return null;
            }
        } catch (PDOException $e) {
            echo "Erreur de requête : " . $e->getMessage();
            return null;
        }
    }

    function getMostActiveTechnician($period = 'all') {
        $base = connexionPDO();
        try {
            $dateCondition = "";
            if ($period == 'year') {
                $dateCondition = "AND YEAR(i.date_intervention) = YEAR(CURRENT_DATE)";
            } elseif ($period == 'month') {
                $dateCondition = "AND MONTH(i.date_intervention) = MONTH(CURRENT_DATE) AND YEAR(i.date_intervention) = YEAR(CURRENT_DATE)";
            }
    
            $query = "SELECT e.nom_employe, e.prenom_employe, COUNT(i.numero_intervention) AS total_interventions 
                      FROM employes e
                      JOIN interventions i ON e.matricule = i.matricule
                      WHERE 1=1 $dateCondition
                      GROUP BY e.nom_employe, e.prenom_employe
                      ORDER BY total_interventions DESC
                      LIMIT 1";
            $statement = $base->prepare($query);
            $statement->execute();
            $resultat = $statement->fetch(PDO::FETCH_ASSOC);
        
            if ($resultat) {
                return $resultat;
            } else {
                return null;
            }
        } catch (PDOException $e) {
            echo "Erreur de requête : " . $e->getMessage();
            return null;
        }
    }
    
    


    

?>