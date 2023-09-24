<?php
//AFFICHE UN LIVRE A PARTIR DE SON SLUG QUAND ON CLIQUE SUR LE BOUTON VOIR
//DE LA VUE index.php

require_once 'classes/Reservation.php';
require_once 'classes/Book.php';
require_once 'classes/Client.php';

require 'templates/header.html.php';

/**
* Page d'une seule réservation
*/
if (isset($_GET['id'])){
    $reservation = Reservation::getOneReservation($_GET['id']);
}
//var_dump($reservation);

$books = Book::getBooks();
$clients = Client::getClients();

if (isset($_POST['id'])){
    if (isset($_POST['delete'])){
        //var_dump("SUPPRESSION");
        Reservation::deleteReservation($_POST['id']);
    }elseif(isset($_POST['edit'])){
        //var_dump("MODIFICATION");
        $reservation = new Reservation();
        $reservation
            ->setId($_POST['id'])
            ->setClientId($_POST['clientId'])
            ->setBookId($_POST['bookId'])
            ->setDate_start($_POST['startDate'])
            ->setDate_End($_POST['endDate'])
            ->setDate_Return($_POST['returnDate'])
            ->setIsClosed($_POST['isClosed'])
            ->setIsArchived($_POST['isArchived'])
        ;
        //var_dump($book);
        Reservation::editReservation($reservation);
    }
}
// if(isset($_POST['id'])){
//     Book::deleteBook($_POST['id']);
//     //header('Location: /books.php');
// }

//var_dump($book);


?>
<main role="main" class="container">
    <div class="row">
        <div class="col-md-8 blog-main">
                <div class="mt-4">
                    <img src="/assets/images/dummy-200x200.png" class="rounded float-right" alt="COVER" style="width: 200px; height: 200px;">
                </div>
            <br>
            <h3 class="pb-3 mb-4 font-italic border-bottom">
                <?= $reservation['author'] ?>
            </h3>
            <div class="blog-post">
                <h2 class="blog-post-title"><?= $reservation['title'] ?></h2>
                <p class="blog-post-meta">Du <?= $reservation['date_start'] ?> au  <?= $reservation['date_end'] ?></p>
                <p class="blog-post-meta">Par  <?= $reservation['firstname'] . " " . $reservation['lastname'] ?></p>
            </div>
        </div>
    </div>
    <hr>
    <br>
<div class="d-flex gap-3">
    <button type="button" class="btn btn-outline-danger btn-lg text-bg-warning" data-bs-toggle="modal" data-bs-target="#editReservation">
        Modifier
    </button>
    <form method="POST">
        <input name="id" type="text" value="<?= $reservation['id'] ?>" hidden>
        <input name="delete" type="submit" class="btn btn-lg btn-danger" value="Supprimer">
    </form>
</div>

<!-- Modal - TODO : sécuriser le formulaire d'édition d'une reservation --> 
<div class="modal fade" id="editReservation" tabindex="-1" role="dialog" aria-labelledby="editReservationLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editReservationLabel">Réservation - <?= $reservation['id'] ?></h5>
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST">
            <input name="id" type="text" value="<?= $reservation['id']; ?>" hidden>
            <div class="form-group">
                <label for="bookReservation">Livre</label>
                <select value="" class="custom-select form-control" name="bookId" id="bookReservation" placeholder="Sélectionnez un livre" required>
                    <?php foreach($books as $book) : ?>
                        <?php if($book['id'] == $reservation['bookId']) : ?>
                            <option selected value = "<?= $book['id'] ?>"> <?= $book['title'] ?></option>
                        <?php else : ?>
                            <option value = "<?= $book['id'] ?>"> <?= $book['title'] ?></option>
                        <?php endif ?>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="clientReservation">Client</label>
                <select value="<?= $reservation['lastname'] . " " . $reservation['firstname'] ?>" class="custom-select form-control" name="clientId" id="clientReservation" placeholder="Sélectionnez un client" required>
                    <?php foreach($clients as $client) : ?>
                        <option value = "<?= $client['id'] ?>"> <?= $client['lastname'] . " " . $client['firstname'] ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="startReservation">Début</label>
                <input type="date" value="<?= $reservation['startDate']; ?>" class="form-control" name="startDate" id="startReservation" aria-describedby="startHelp" placeholder="Entrez une date ..." required>
                <small id="startHelp" class="form-text text-muted">Choisissez une date</small>
            </div>
            <div class="form-group">
                <label for="endReservation">Fin</label>
                <input type="date" value="<?= $reservation['endDate']; ?>" class="form-control" name="endDate" id="endReservation" aria-describedby="endHelp" placeholder="Entrez une date ..." required>
                <small id="endHelp" class="form-text text-muted">Choisissez une date</small>
            </div>
            <div class="checkbox">
                <label><input name="isClosed" value="<?= $reservation['isClosed']; ?>" type="checkbox"> Cloturé ?</label>
            </div>
            <div class="checkbox">
                <label><input name="isArchived" value="<?= $reservation['isArchived']; ?>" type="checkbox"> Archivé ?</label>
            </div>
            <div class="row mt-2 offset-md-1">
                <div class="col-md-5">
                    <button name="edit" type="submit" class="btn btn-success">
                        <i class="bi bi-save mx-2"></i>
                        Enregistrer
                    </button>
                </div>
                
                <div class="col-md-5 offset-md-1">
                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal" float-right>
                        <i class="bi bi-x-circle mx-2"></i>
                        Annuler
                    </button>
                </div>
            </div>
        </form>
      </div>
    </div>
  </div>
</div>


<?php require 'templates/footer.html.php'; ?>