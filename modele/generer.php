<?php
//include "bd.inc.php";
$bddPDF = connexionPDO();
class GenererPDF {
    private $bdd;
 
    public function __construct($bddInstance) {
        $this->bdd = $bddInstance;
        if (session_status() == PHP_SESSION_NONE) {
            session_start();
        }
    }
 
    public function GenererPDF($id_inter) {
        $query = "SELECT * FROM interventions I, controlers CO, type_materiels TM, techniciens T, clients C, materiels M, employes E WHERE C.numero_client = I.numero_client 
                AND I.numero_intervention = CO.numero_intervention AND CO.numero_de_serie = M.numero_de_serie AND M.reference_interne = TM.reference_interne 
                AND I.matricule = T.matricule AND E.matricule = T.matricule AND I.numero_intervention = :id_inter; ";
        $statement = connexionPDO()->prepare($query);
        $statement->bindParam(':id_inter', $id_inter);
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);      
   
        return $result;
    }  
   
   
}
$ModelePDF = new GenererPDF($bddPDF);
?>