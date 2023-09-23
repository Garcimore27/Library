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

if(isset($_POST)) {
    if(isset($_POST['addClient'])){
    $client = new Client();
    $client->setFirstname($_POST['firstname'])
        ->setLastname($_POST['lastname'])
        ->setAddress($_POST['address'])
        ->setCity($_POST['city'])
        ->setCountry($_POST['country'])
        ->setYear($_POST['year'])
        ->setDeposit($_POST['deposit'])
    ;
    Client::addClient($client);
    }
}
$clients = Client::getClients();

?>


<!-- Liste des clients -->
<div class="text-center mt-4">
    <h2><i class="bi bi-book mx-2"></i> Bibliothèque - 
        <span class="badge rounded-pill text-bg-success mx-2"> <?= $totalClients; ?> Clients</span>
    </h2>
    <br>
    <button type="button" name="addClient" class="btn btn-outline-danger btn-lg text-bg-warning" data-bs-toggle="modal" data-bs-target="#addClient">
        Ajouter un Client 
    </button>
</div>
<div class="rounded p-3 m-4 bg-light shadow">
    <?php include 'templates/_partials/_clients-table.html.php'; ?>
</div>
<?php include 'templates/modals/addClient.html.php'; ?>
<hr>

<?php

require 'templates/footer.html.php';
