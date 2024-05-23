<center>
<form method="POST">
    <input type="search" id="recherche" name="recherche">
</form>
<form method="POST">
<input type="hidden" id="reset" name="reset">
    <button>reset</button>
</form>
</center>

<table class='techtable'>
    <tr class='techtable'>
      <th class='techtable'>Fiche Intervention</th>
      <th class='techtable'>Date Visite</th>
      <th class='techtable'>Heure Visite</th>
      <th class='techtable'>Matricule</th>
      <th class='techtable'>Editer</th> 
    </tr>

<?php


foreach($donnees as $donnee){

         echo '<td class="techtable">' .$donnee['numero_intervention']. '</td><td class="techtable">' . $donnee['date_visite'] . '</td><td class="techtable">' .$donnee['heure_visite']. '</td><td class="techtable">' .$donnee['matricule']. '</td><td class="techtable"><a href=./?action=editerInterventions&&id=' . $donnee['numero_intervention'] . '>Editer</a></td></tr>';

}
?>
</table>