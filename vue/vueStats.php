<link rel="stylesheet" href="style.css" type="text/css">


<body>

    <H4>Nombre total d'agences enregistrées: <?php getTotalAgence(); ?> </H4>

    <H4>Nombre total de clients enregistrés: <?php getTotalClients(); ?> </H4>
    
    <H4>Nombre total de contrats pour le type <?php echo $_GET['type']; ?> est de: <?php if(isset($_GET['type'])){
        getTotalContratsByType($_GET['type']);
        } ?> </H4>

    <select style="max-width: 30%;" id="type_contrat" name="type_contrat">
    <option value="">Choisir un type de contrat</option>
    <?php
    $types_contrats = getTypeContrat();
    
    foreach ($types_contrats as $type_contrat) {
        $selected = ($type_contrat['reference_type_contrat'] == $defaultType) ? 'selected' : '';
        echo "<option value='{$type_contrat['reference_type_contrat']}' $selected>{$type_contrat['reference_type_contrat']}</option>";
    }
    ?>
</select>

<H4>Le client ayant le plus d'interventions : 
        <?php 
        $client = getClientWithMostInterventions();
        if ($client) {
            echo $client['numero_client'] . " avec " . $client['total_interventions'] . " interventions";
        } else {
            echo "Aucun client trouvé";
        }
        ?>
    </H4>




<H4>Nombre d'interventions réalisées par  
    <?php echo $_GET['tech']; ?> est de: <?php 
    if(isset($_GET['tech'])){
        getTotalInterByTechnicien($_GET['tech']);
    } ?>
</H4>

<select style="max-width: 30%;" id="tech" name="tech">
    <option value="">Choisir un technicien</option>
    <?php
    $techs = getTechnicien(); 
    
    foreach ($techs as $tech) {
        $selected = ($tech['matricule'] == $defaultType) ? 'selected' : '';
        echo "<option value='{$tech['matricule']}' $selected>{$tech['nom_employe']} {$tech['prenom_employe']}</option>";
    }
    ?>




    <H4>Le technicien le plus actif : 
        <?php 
        $technicienAlways = getMostActiveTechnician('all');
        $technicienYear = getMostActiveTechnician('year');
        $technicienMonth = getMostActiveTechnician('month');

        echo "Toujours : ";
        if ($technicienAlways) {
            echo $technicienAlways['nom_employe'] . " " . $technicienAlways['prenom_employe'] . " avec " . $technicienAlways['total_interventions'] . " interventions";
        } else {
            echo "Aucun technicien trouvé";
        }

        echo "<br>Cette année : ";
        if ($technicienYear) {
            echo $technicienYear['nom_employe'] . " " . $technicienYear['prenom_employe'] . " avec " . $technicienYear['total_interventions'] . " interventions";
        } else {
            echo "Aucun technicien trouvé";
        }

        echo "<br>Ce mois-ci : ";
        if ($technicienMonth) {
            echo $technicienMonth['nom_employe'] . " " . $technicienMonth['prenom_employe'] . " avec " . $technicienMonth['total_interventions'] . " interventions";
        } else {
            echo "Aucun technicien trouvé";
        }
        ?>
    </H4>
</select>


    
    <script>
    
    document.getElementById('type_contrat').addEventListener('change', function() {
        var typeContrat = this.value;

        
        var url = window.location.href.split('?')[0]; 
        var params = new URLSearchParams(window.location.search);
        params.set('type', typeContrat); // Définir le paramètre 'type' avec la valeur sélectionnée
        window.location.href = url + '?' + params.toString(); // Rediriger vers la nouvelle URL
    });
    document.getElementById('tech').addEventListener('change', function() {
        var tech = this.value;

       
        var url = window.location.href.split('?')[0]; 
        var params = new URLSearchParams(window.location.search);
        params.set('tech', tech); 
        window.location.href = url + '?' + params.toString(); 
    });
</script>