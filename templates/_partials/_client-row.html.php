<?php

/**
 * fichier de composant pour une réservation sous forme de ligne d'un tableau
 */


require_once 'classes/Client.php';

 ?>

<tr>
    <td class="text-center"><?= $client['id'] ?></td>
    <td class="text-center"><?= $client['firstname'] ?></td>
    <td class="text-center"><?= $client['lastname'] ?></td>
    <td class="text-center"><?php $date = new DateTime('now');
            echo $date->format("Y") - $client['year'];
        ?>
    </td>
    <td class="text-center"><?php if($client['deposit'] === 1) : ?>
            <p class="badge bg-success text-light rounded-pill">Déposée</p>
        <?php else : ?>
            <p class="badge bg-warning rounded-pill">Non Déposée</p>
        <?php endif ?>
    </td>
    <td class="text-center"><?php if($client['deposit'] <> 1) : ?>
            <a href="/clients.php?id=<?= $client['id'] ;?>" class="btn btn-sm btn-danger">PAYER</a>
        <?php endif ?>
    </td>
</tr>
