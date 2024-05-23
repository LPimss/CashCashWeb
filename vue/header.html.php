<style type="text/css">
            @import url("css/style.css");
            .element {
        margin-right: 20px; /* Espacement horizontal entre les éléments */
    }
</style>

<header>
    <img src="image/cashcash.png" alt="Logo Cash Cash">
    <h1><a href="?action=" style="text-decoration: none; color: inherit;">CashCash</a></h1>


<?php    if(isset($_SESSION['type'])){
        if($_SESSION['type'] == "assistant"){ ?>

        <h3><a href="?action=assistant" style="text-decoration: none; color: #7AA95C;" class="element">Interventions</a></h3>   
        <h3><a href="?action=tbClients" style="text-decoration: none; color: #7AA95C;" class="element">Clients</a></h3>   
        <h3><a href="?action=stats&type=TC001&tech=T217" style="text-decoration: none; color: #7AA95C;" class="element">Stats</a></h3>
        <h3><a href="?action=generer" style="text-decoration: none; color: #7AA95C;" class="element">Generer Fiche</a></h3>
        <?php
            
            
        }else{?>

            <h3><a href="?action=inter" style="text-decoration: none; color: #7AA95C;" class="element">Interventions</a></h3>   
            <?php



        }
    }


    if(isset($_SESSION['type'])){
        echo '<a href="?action=deco" class="deco">Déconnexion</a>';
    }
    
?>
</header>




    