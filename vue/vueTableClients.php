<style>
    table,
    th,
    td {
        border: solid 1px;
        border-collapse: collapse;
    }
</style>

<form action="./?action=tbClients" method="POST">
    <input type="text" name="search" placeholder="Rechercher...">
    <input type="submit" value="Search">
</form>

<?php
if ($resultat) {
?>
    <table>
        <thead>
            <tr>
                <th>Numero Client</th>
                <th>Mail</th>
                <th>DureeD</th>
                <th>Distance (en km)</th>
                <th>Raison sociale</th>
                <th>Siren</th>
                <th>Code APE</th>
                <th>Adresse</th>
                <th>Telephone</th>
                <th>NumeroA</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <?php
            foreach($resultat as $row) {
                echo "<tr>";
                echo "<td>" . $row['numero_client'] . "</td>";
                echo "<td>" . $row['email'] . "</td>";
                echo "<td>" . $row['duree_deplacement'] . "</td>";
                echo "<td>" . $row['distanceKM'] . "</td>";
                echo "<td>" . $row['raison_sociale'] . "</td>";
                echo "<td>" . $row['siren'] . "</td>";
                echo "<td>" . $row['code_ape'] . "</td>";
                echo "<td>" . $row['adresse'] . "</td>";
                echo "<td>" . $row['telephone_client'] . "</td>";
                echo "<td>" . $row['numero_agence'] . "</td>";
                echo "<td><a href='?action=details&numero_client=" . $row['numero_client'] . "'>Details</a></td>";
                echo "</tr>";
            }

        }
            ?>
        </tbody>
    </table>