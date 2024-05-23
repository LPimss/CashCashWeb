<?php 
    
    include './vue/header.html.php';

if (isset($_GET['numero_client']) && !empty($_GET['numero_client'])) {
    $num = $_GET['numero_client'];
    $client = getClientByNumClient($num);

} else {
    echo "Le numéro de client n'a pas été spécifié.";
}
include './vue/vueDetailsClient.php';
include './vue/footer.html.php';
 
?>
