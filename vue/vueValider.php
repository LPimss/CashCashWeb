<?php if(isset($_GET['id'])){ ?>

<form style="text-align: center;" method="POST">

    <H2> Validation de l'intervention n°<?php $id    ?></H2>
    <label for="tPasse">Temps passé (en mn)</label>
    <input type="number" name="tPasse" id="tPasse"><br><br>

    <label for="SN">Numéro de serie</label>
    <select name="SN">
    <?php foreach ($listeSN as $liste): ?>
        <option value="<?php echo $liste; ?>" <?php if ($liste == $listeSN) echo 'selected'; ?>><?php echo $liste; ?></option>
    <?php endforeach; ?>
    </select><br><br> 

    <label for="com">Commentaire :</label>
    <textarea name="com"></textarea><br><br>

    <input type="submit">


</form>
    
<?php }