<!DOCTYPE html>
<html>
    <body>
        <form action="./?action=generer" method="POST">
            <select name="numero_intervention">
                <option value="Null">--Choisir un numéro d'intervention --</option>
                <?php   
                    if($result) {  
                        foreach ($result as $value) {
                            echo "<option value='" . $value['numero_intervention'] . "'>" . $value['numero_intervention'] . "</option>";
                        }
                    } else {
                        echo"<option value='erreur'> erreur résultat</option>";
                    }
                ?>
            </select>
            <input type="submit" value="Générer">
        </form>
    </body>
</html>