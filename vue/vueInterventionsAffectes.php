<form class='recherche' action="#" method="POST">
    <input type="search" id="recherche" name="recherche">
    <button>rechercher</button>
</form>
<?php
// Vérifier si la fonction a renvoyé un résultat valide
if ($resultat !== false) {
    // Début de la table HTML
    echo '<table>';
    echo '<tr>'; // Ajout de la ligne pour les en-têtes de colonnes
    echo '<th>Numéro Intervention</th>';
    echo '<th>Date Visite</th>';
    echo '<th>Heure Visite</th>';
    echo '<th>Adresse</th>';
    echo '<th>Action</th>';
    echo '</tr>'; // Fin de la ligne pour les en-têtes de colonnes
    
    // Parcourir les résultats et afficher chaque ligne dans la table
    foreach ($resultat as $donnees) {
        echo '<tr>';
        echo '<td class="techtable">' . $donnees['numero_intervention'] . '</td>';
        echo '<td class="techtable">' . $donnees['date_visite'] . '</td>';
        echo '<td class="techtable">' . $donnees['heure_visite'] . '</td>';
        echo '<td class="techtable">' . $donnees['adresse'] . '</td>';
        echo '<td class="techtable"><a href="?action=validerInterventions&id=' . $donnees['numero_intervention'] . '">Valider</a></td>';
        echo '</tr>';
    }
    
    // Fin de la table HTML
    echo '</table>';
} else {
    // Gérer l'erreur
    echo "Une erreur s'est produite lors de la récupération des données.";
}
?>