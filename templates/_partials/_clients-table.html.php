<?php
/**
 * fichier de composant pour la liste des réservation sous forme de tableau
 */
 require_once 'classes/Client.php';
 ?>
<table class="table table-striped">
    <thead>
        <tr>
            <th class="text-center" scope="col">#</th>
            <th class="text-center" scope="col">Prénom</th>
            <th class="text-center" scope="col">Nom</th>
            <th class="text-center" scope="col">Age</th>
            <th class="text-center" scope="col">Caution</th>
            <th class="text-center" scope="col">Payer</th>
        </tr>
    </thead>
    <tbody>
<?php

 foreach(Client::getClients() as $client)  {
    include '_client-row.html.php';
}

?>
    </tbody>
</table>
