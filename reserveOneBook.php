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
if (isset($_GET['slug'])){
    $selectedBook = Book::getOneBook($_GET['slug']);
}
//var_dump($reservation);

$books = Book::getBooks();
$clients = Client::getClients();

if(isset($_POST['add'])){
    //var_dump("MODIFICATION");
    $reservation = new Reservation();
    $reservation
        ->setClientId($_POST['clientId'])
        ->setBookId($_POST['bookId'])
        ->setDate_start($_POST['startDate'])
        ->setDate_End($_POST['endDate'])
        ->setDate_Return(null)
        ->setIsClosed(0)
        ->setIsArchived(0)
    ;
    //var_dump($book);
    Reservation::addReservation($reservation);

}

?>
<div class="container">
    <h2>Livre sélectionné : <?= $selectedBook['id'] . " - " . $selectedBook['title'] ?></h2>
    <?php include 'templates/_partials/_msg-success.php'; ?>
    <div class="col col-lg-4">
        <form method="POST">
            <div class="form-group">
                <label for="bookTitle">Livre</label>
                <input type="text" class="form-control" name="bookId" id="bookId" value="<?= $selectedBook['id'] ?>" hidden>
                <input type="text" class="form-control" id="bookTitle" value="<?= $selectedBook['title'] ?>" disabled >
            </div>
            <div class="form-group">
                <label for="clientReservation">Client</label>
                <select value="" class="custom-select form-control" name="clientId" id="clientReservation" placeholder="Sélectionnez un client" required>
                    <?php foreach($clients as $client) : ?>
                        <option value = "<?= $client['id'] ?>"> <?= $client['lastname'] . " " . $client['firstname'] ?></option>
                    <?php endforeach ?>
                </select>
            </div>
            <div class="form-group">
                <label for="startReservation">Début</label>
                <input type="date" class="form-control" name="startDate" id="startReservation" aria-describedby="startHelp" placeholder="Entrez une date ..." required>
                <small id="startHelp" class="form-text text-muted">Choisissez une date</small>
            </div>
            <div class="form-group">
                <label for="endReservation">Fin</label>
                <input type="date" class="form-control" name="endDate" id="endReservation" aria-describedby="endHelp" placeholder="Entrez une date ...">
                <small id="endHelp" class="form-text text-muted">Choisissez une date</small>
            </div>
            <div class="row mt-2 offset-md-1">
                <div class="col-md-5">
                    <button type="submit" name="add" class="btn btn-success">
                        <i class="bi bi-save mx-2"></i>
                        Enregistrer
                    </button>
                </div>
                
                <div class="col-md-5 offset-md-1">
                    <a href="/" class="btn btn-warning text-light col-lg-12">
                        <i class="bi bi-x-circle mx-2"></i><br>
                        Retour
                    </a>
                </div>
            </div>
        </form>
    </div>
</div>


<?php require 'templates/footer.html.php'; ?>