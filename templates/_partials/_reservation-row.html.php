<?php

/**
 * fichier de composant pour une réservation sous forme de ligne d'un tableau
 */


require_once 'classes/Reservation.php';

 ?>

 <tr>
    <td class="text-center"><a href="/reservation.php?id=<?= $item['id'] ;?>" class="btn btn-sm btn-outline-light"><?= $item['id'] ?></a></td>
    <td class="text-center"><?= $item['title'] ?></td>
    <td class="text-center"><?= $item['firstname'] . " " . $item['lastname'] ?></td>
    <td class="text-center"><?= (DateTime::createFromFormat('Y-m-d', $item['date_start']))->format('d/m/Y'); ?></td>
    <td class="text-center"><?= (DateTime::createFromFormat('Y-m-d', $item['date_end']))->format('d/m/Y'); ?></td>
    <td class="text-center"><?php if(!$item['isClosed']) :?>
            <a href="/reservations.php?idResa=<?= $item['id'] ;?>" class="btn btn-sm btn-warning">Rendre</a>
        <?php endif ?>
    </td>
</tr>
