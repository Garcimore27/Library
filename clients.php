<?php

require_once 'classes/Client.php';
require_once 'configuration/Connect.php';
require_once 'templates/header.html.php';


$totalClients = count(Client::getClients());
if(isset($_GET)){
    if(isset($_GET['id'])){
        Client::depositPay($_GET['id']);
    }
}

$clients = Client::getClients();

?>


<!-- Liste des clients -->
<h3 class="text-center mt-4">Liste des Clients - <p class="badge bg-success text-light rounded-pill"><?= $totalClients ?></p></h2>
<div class="rounded p-3 m-4 bg-light shadow">
    <?php include 'templates/_partials/_clients-table.html.php'; ?>
</div>
<hr>

<?php

require 'templates/footer.html.php';
