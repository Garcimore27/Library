<?php
/**
 * fichier de composant pour la liste des réservation sous forme de tableau
 */
 require_once 'classes/Reservation.php';
 ?>
<table class="table table-striped">
    <thead>
        <tr>
            <th class="text-center" scope="col">Voir</th>
            <th class="text-center" scope="col">Livre</th>
            <th class="text-center" scope="col">Client</th>
            <th class="text-center" scope="col">Début</th>
            <th class="text-center" scope="col">Fin</th>
            <th class="text-center" scope="col">Retour</th>
            <th class="text-center" scope="col">Clôturé?</th>
            <th class="text-center" scope="col">Action</th>
        </tr>
    </thead>
    <tbody>
<?php

 foreach(Reservation::getAllReservations() as $item)  {
    include '_reservationAll-row.html.php';
}

?>
    </tbody>
</table>
