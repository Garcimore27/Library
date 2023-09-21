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

// $db = Connect::connect();
// $sql = $db->prepare("SELECT * FROM clients");
// $sql->execute();
// $clients = $sql->fetchAll(PDO::FETCH_ASSOC);

?>


<!-- Liste des clients -->
<h3 class="text-center mt-4">Liste des Clients - <p class="badge bg-success text-light rounded-pill"><?= $totalClients ?></p></h2>
<div class="rounded p-3 m-4 bg-light shadow">
    <table class="table table-striped">
        <thead>
            <tr>
                <th class="font-weight-bold" scope="col">#</th>
                <th class="font-weight-bold" scope="col">Prénom</th>
                <th class="font-weight-bold" scope="col">Nom</th>
                <th class="font-weight-bold" scope="col">Age</th>
                <th class="font-weight-bold" scope="col">Caution</th>
                <th class="font-weight-bold" scope="col">Payer</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($clients as $client) : ?>
            <tr>
                <td><?= $client['id'] ?></td>
                <td><?= $client['firstname'] ?></td>
                <td><?= $client['lastname'] ?></td>
                <td><?php $date = new DateTime('now');
                        echo $date->format("Y") - $client['year'];
                    ?>
                </td>
                <td><?php if($client['deposit'] === 1) : ?>
                        <p class="badge bg-success text-light rounded-pill">Déposée</p>
                    <?php else : ?>
                        <p class="badge bg-warning rounded-pill">Non Déposée</p>
                    <?php endif ?>
                </td>
                <td><?php if($client['deposit'] <> 1) : ?>
                        <a href="/clients.php?id=<?= $client['id'] ;?>" class="btn btn-sm btn-danger">PAYER</a>
                    <?php endif ?>
                </td>
            </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</div>
<hr>

<?php

require 'templates/footer.html.php';
