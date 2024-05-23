<?php

$conn = connexionPDO();

    include './vue/header.html.php';

    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $numero_intervention = $_POST['numero_intervention'];
        $date_visite = $_POST['date_visite'];
        $heure_visite = $_POST['heure_visite'];
        $numero_client = $_POST['numero_client'];
        $matricule = $_POST['matricule'];

        try {
            $sql3 = "INSERT INTO interventions (numero_intervention, date_visite, heure_visite, numero_client, matricule) VALUES(:numero_intervention, :date_visite, :heure_visite, :numero_client, :matricule)";
            $stmt3 = $conn->prepare($sql3);
            $stmt3->bindParam(':numero_intervention', $numero_intervention);
            $stmt3->bindParam(':date_visite', $date_visite);
            $stmt3->bindParam(':heure_visite', $heure_visite);
            $stmt3->bindParam(':numero_client', $numero_client);
            $stmt3->bindParam(':matricule', $matricule);
            $stmt3->execute();
            if($stmt3 && !empty($numero_client) && !empty($matricule)) {
                echo ("Visite affecter avec succès");
            } else {
                echo ("Erreur lors de l'affectation de la visite ");
            }
        } catch (Eception $exc) {
            echo "Une erreur est survenue : " . $exc->getMessage() . "\n";
        }

    }


        
    include './vue/vueAffecter.php';
    include './vue/footer.html.php';
?>