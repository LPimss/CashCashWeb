<?php
    include './vue/header.html.php';

    if (isset($_GET["id"])) {
        $id = $_GET["id"];
        try {
            $resultat = getInterventionById($id);
            if ($resultat) { 
                $matricules = getMatricules($id);
            } else {
                echo "Aucune donnée trouvée pour cet ID.";
            }
        } catch (PDOException $e) {
            echo "Erreur de requête : " . $e->getMessage();
        }
    }
?>
</body>
<?php include './vue/vueEditer.php';?>
<?php include './vue/footer.html.php';?>