<?php

    include './vue/header.html.php';
        if (isset($_POST['search']) && !empty($_POST['search'])) {
            $search = $_POST['search'];
            $resultat = getClientsBySearch($search);
        }else{
            $resultat = getClients();
        }

    include './vue/vueTableClients.php';
    include './vue/footer.html.php';

?>
