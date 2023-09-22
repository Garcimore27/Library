<?php

require_once 'classes/Book.php';
require_once 'classes/Client.php';


$clients = Client::getClients();
$totalBooks = count(Book::getBooks());
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


    }
}

require_once 'templates/header.html.php';

?>

<!-- Bibliothèque -->
<div class="text-center mt-4">
    <h2><i class="bi bi-book mx-2"></i> Bibliothèque - 
        <span class="badge rounded-pill text-bg-success mx-2"> <?= $totalBooks; ?> Livres</span>
    </h2>
    <br>
    <button type="button" name="addBook" class="btn btn-outline-danger btn-lg text-bg-warning" data-bs-toggle="modal" data-bs-target="#addBook">
        Ajouter un Livre 
    </button>
</div>
<div class="rounded p-3 m-4 gap-4 bg-light shadow switch-row row justify-content-center">
    <?php if(isset($_GET['success'])) : ?>
        <?php if($_GET['success']) : ?>
            <div id="msgAlert" class="alert alert-success" role="alert">Enregistrement réussi !</div>
        <?php elseif(!$_GET['success'])  : ?>
            <div id="msgAlert" class="alert alert-danger" role="alert">Erreur, veuillez réessayer</div>
        <?php endif ?>
    <?php endif ?>
    <?php include 'templates/_partials/_books-card.html.php'; ?>
</div>

<!-- Modal - TODO : sécuriser le formulaire d'ajout de livre --> 
<div class="modal fade" id="addBook" tabindex="-1" role="dialog" aria-labelledby="addBookLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addBookLabel">Ajouter un Livre</h5>
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST">
            <div class="form-group">
                <label for="titreBook">Titre</label>
                <input type="text" class="form-control" name="title" id="titreBook" aria-describedby="titreHelp" placeholder="Entrez un Titre"  required>
                <small id="titreHelp" class="form-text text-muted">Indiquez un titre</small>
            </div>
            <div class="form-group">
                <label for="auteurBook">Auteur</label>
                <input type="text" class="form-control" name="author" id="auteurBook" aria-describedby="auteurHelp" placeholder="Entrez un Auteur" required>
                <small id="auteurHelp" class="form-text text-muted">Indiquez un auteur</small>
            </div>
            <div class="form-group">
                <label for="catBook">Catégorie</label>
                <select value="" class="custom-select form-control" name="category" id="catBook" placeholder="Entrez une categorie" required>
                <option value = "roman"> Roman</option>
                    <option selected>Choisissez ...</option>
                    <option value = "poésie"> Poésie</option>
                    <option value = "théâtre"> théâtre</option>
                    <option value = "biographie"> Biographie</option>
                    <option value = "essai"> Essai</option>
                </select>
            </div>
            <div class="form-group">
                <label for="anneeBook">Année</label>
                <input type="text" class="form-control" name="year" id="anneeBook" maxlength="4" minlength="4" pattern="\d{4}" aria-describedby="anneeHelp" placeholder="Tapez une année" required>
                <small id="anneeHelp" class="form-text text-muted">Entrez une année</small>
            </div>
            <div class="form-group">
                <label for="isbnBook">ISBN</label>
                <input type="text" class="form-control" name="isbn" id="isbnBook" aria-describedby="isbnHelp" placeholder="Entrez un n° isbn" required>
                <small id="isbnHelp" class="form-text text-muted">Insérer un isbn</small>
            </div>
            <div class="row mt-2 offset-md-1">
                <div class="col-md-5">
                    <button type="submit" class="btn btn-success">
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

<!-- Modal - TODO : sécuriser le formulaire de reservation de livre --> 
<div class="modal fade" id="resaBook" tabindex="-1" role="dialog" aria-labelledby="addBookLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="resaBookLabel">Réserver un Livre</h5>
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form method="POST">
            <div class="form-group">
                <label for="bookReservation">Livre</label>
                <select value="" class="custom-select form-control" name="bookId" id="bookReservation" placeholder="Sélectionnez un livre" required>
                    <?php foreach($books as $book) : ?>
                        <option value = "<?= $book['id'] ?>"> <?= $book['title'] ?></option>
                    <?php endforeach ?>
                </select>
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
            <!-- <div class="form-group">
                <label for="returnReservation">Retour</label>
                <input type="date" class="form-control" name="returnDate" id="returnReservation" aria-describedby="returnHelp" placeholder="Entrez une date ...">
                <small id="returnHelp" class="form-text text-muted">Choisissez une date</small>
            </div> -->
            <!-- <div class="checkbox">
                <label><input name="isClosed" type="checkbox"> Cloturé ?</label>
            </div>
            <div class="checkbox">
                <label><input name="isArchived" type="checkbox"> Archivé ?</label>
            </div> -->
            <div class="row mt-2 offset-md-1">
                <div class="col-md-5">
                    <button type="submit" class="btn btn-success">
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

<p class="text-center mb-4">
    <a href="books.php" class="btn btn-outline-primary text-center">Voir tous les livres</a>
</p>

<?php

require 'templates/footer.html.php';
