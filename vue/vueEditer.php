<form style="text-align: center; display: grid; margin-top: 8%;" action="?action=updateInterventions" method="POST">
    <input type="hidden" name="id" value="<?php echo $id; ?>">
    <label for="date_visite">Date visite</label>
    <td><input class="editer1" style="text-align: center; margin-bottom: 1%; margin-left: 45%; margin-right: 45%;" type="date" name="date_visite" value="<?php echo $resultat['date_visite']; ?>"></td>
    <label for="date_visite">Heure visite</label>
    <td><input class="editer2" style="text-align: center; margin-bottom: 1%; margin-left: 45%; margin-right: 45%;" type="time" name="heure_visite" value="<?php echo $resultat['heure_visite']; ?>" step="1"></td>
    
    <?php if(isset($resultat['temps_passe'])): ?>
        <label for="date_visite">Temps passe (en mn)</label>
        <td><input class="editer3" style="text-align: center; margin-bottom: 1%; margin-left: 45%; margin-right: 45%;" type="text" name="temps_passe" value="<?php echo $resultat['temps_passe']; ?>"></td>
        <label for="date_visite">Commentaire</label>
        <td><textarea class="editer4" style="text-align: center; margin-bottom: 1%; margin-left: 45%; margin-right: 45%;" name="commentaire"><?php echo htmlspecialchars($resultat['commentaire']); ?></textarea></td>
    <?php endif; ?>
    
    <td> 
        <label for="date_visite">Matricule</label>
        <select class="editer5" style="text-align: center; margin-bottom: 1%; margin-left: 45%; margin-right: 45%;" name="matricule">
            <?php foreach ($matricules as $matricule): ?>
                <option value="<?php echo $matricule; ?>" <?php if ($matricule == $resultat['matricule']) echo 'selected'; ?>><?php echo $matricule; ?></option>
            <?php endforeach; ?>
        </select>
    </td>
    <td><input class="editer6" style="text-align: center; margin-bottom: 1%; margin-left: 45%; margin-right: 45%;" type="submit" value="Modifier"></td>
</form>