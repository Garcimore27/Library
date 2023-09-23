<?php

require_once 'classes/Book.php';
require_once 'classes/Client.php';
require_once 'classes/Reservation.php';

require 'templates/header.html.php';

$clients = Client::getClients();
$books = Book::getAvailableBooks();
//Traitement du formulaire
if(isset($_POST)) {
    if(isset($_POST['addBook'])){
    $book = new Book();
    $book->setTitle($_POST['title'])
        ->setAuthor($_POST['author'])
        ->setCategory($_POST['category'])
        ->setYear($_POST['year'])
        ->setIsbn($_POST['isbn'])
        ->setSlug($_POST['title'])
    ;
    Book::addBook($book);
    //var_dump($book);
    }elseif(isset($_POST['resaBook'])){
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
        Reservation::addReservation($reservation);

    }
}
?>

<!-- Liste de livres -->
<h2 class="text-center mt-4">Liste des livres</h2>
<div class="biblioapp-dashboard-books rounded p-3 m-4 d-flex gap-2 bg-light shadow switch-row">
    <?php include 'templates/_partials/_books-card.html.php'; ?>
</div>
<p class="text-center mb-4">
    <a href="books.php" class="btn btn-outline-primary text-center">Voir tous les livres</a>
</p>

<hr>

<!-- Liste de réservations en cours -->
<h3 class="text-center mt-4">Réservations en cours</h2>
<div class="rounded p-3 m-4 bg-light shadow">
    <?php include 'templates/_partials/_currentReservations-table.html.php'; ?>
</div>
<p class="text-center mb-4">
    <a href="reservations.php" class="btn btn-outline-primary text-center">Voir toutes les réservations</a>
</p>

<hr>

<!-- Liste de actions rapides -->
<h3 class="text-center mt-4">Actions rapides</h2>
<div class="d-flex text-center justify-content-center p-4 switch-row">
    <div class="col-md-3 col-sm-12 border rounded p-3 m-4">
        <p>
            Vous pouvez ajouter un livre à partir de cette page en quelques clics.
        </p>
        <button type="button" name="addBook" class="btn btn-outline-primary text-center" data-bs-toggle="modal" data-bs-target="#addBook">
            <i class="bi bi-plus-circle"></i>
            Ajouter un Livre 
        </button>
    </div>
    <div class="col-md-3 col-sm-12 border rounded p-3 m-4">
        <p>
            Vous pouvez ajouter une réservation en cliquant sur le bouton.
        </p>
        <button type="button" class="btn btn-outline-primary text-center" data-bs-toggle="modal" data-bs-target="#addReservation">
            <i class="bi bi-plus-circle"></i>
            Ajouter une Réservation
        </button>
    </div>
    <div class="col-md-3 col-sm-12 border rounded p-3 m-4">
        <p>
            Un nouvel adhérent ? Vous pouvez l'ajouter à partir de cette page.
        </p>
        <a href="clients.php" class="btn btn-outline-primary text-center">
            <i class="bi bi-plus-circle"></i>
            Ajouter un client
        </a>
    </div>
</div>

<?php 

include 'templates/modals/addBook.html.php';
include 'templates/modals/addReservation.html.php';

require 'templates/footer.html.php';
