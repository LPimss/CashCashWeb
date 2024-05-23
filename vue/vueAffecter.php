<?php  ?>

<form action="" method="POST">
            <label for="numero_intervention">N° d'intervention :</label>
            <input type="text" name="numero_intervention" id="numero_intervention"><br>

            <label for="date_visite">date_visite :</label>
            <input type="date" name="date_visite" id="date_visite"><br>

            <label for="heure_visite">heure_visite :</label>
            <input type="time" name="heure_visite" id="heure_visite"><br>

            <label for="numero_client">N° client :</label>
            <select name="numero_client" id="numero_client">
                <option value="0">--Choisir un client--</option>
                <?php
                try {
                    $sql = "SELECT numero_client FROM clients";
                    $stmt = $conn->prepare($sql);
                    $stmt->execute();

                    if ($stmt->rowCount() > 0) {
                        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                            echo ("<option value='" . $row['numero_client'] . "'>" . $row['numero_client'] . "</option>");
                        }
                    } else {
                        echo "Aucun résultat trouvé.";
                    }
                }catch (Exception $e) {
                    echo "Une erreur est survenue : " . $e->getMessage() . "\n";
                }
                ?>
            </select><br>
            <label for="matricule">Matricule de technicien :</label>
            <select name="matricule" id="matricule">
                <option value="0">--Choisir un technicien--</option>
                <?php
                    try {
                        $sql2 = "SELECT matricule FROM techniciens";
                        $stmt2 = $conn->prepare($sql2);
                        $stmt2->execute();
                        
                        if($stmt2->rowCount() > 0) {
                            while ($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)) {
                                echo ("<option value='" . $row2['matricule'] . "'>" . $row2['matricule'] . "</option>");
                            }
                        } else {
                            echo "Aucun résultat trouvé.";  
                        }
                    } catch (Exception $ex) {
                        echo "Une erreur est survenue : " . $ex->getMessage() . "\n";
                    }
                ?>
                </select><br>
            <input type="submit" value="affecter">
        </form>