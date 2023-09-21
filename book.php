<?php
//AFFICHE UN LIVRE A PARTIR DE SON SLUG QUAND ON CLIQUE SUR LE BOUTON VOIR
//DE LA VUE index.php

require 'classes/Book.php';

require 'templates/header.html.php';

/**
* Page d'un livre seul
*/

$book = Book::getOneBook($_GET['slug']);

if (isset($_POST['id'])){
    if (isset($_POST['delete'])){
        //var_dump("SUPPRESSION");
        Book::deleteBook($_POST['id']);
    }elseif(isset($_POST['edit'])){
        //var_dump("MODIFICATION");
        $book = new Book();
        $book
            ->setId($_POST['id'])
            ->setTitle($_POST['title'])
            ->setAuthor($_POST['author'])
            ->setCategory($_POST['category'])
            ->setDescription($_POST['description'])
            ->setYear($_POST['year'])
            ->setIsbn($_POST['isbn'])
            ->setSlug($_POST['title'])
        ;
        //var_dump($book);
        Book::editBook($book);
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
                    <img src="/assets/images/dummy-200x200.png" class="rounded float-left" alt="COVER" style="width: 200px; height: 200px;">
                    <img src="/assets/images/dummy-200x200.png" class="rounded float-right" alt="COVER" style="width: 200px; height: 200px;">
                </div>
            <br>
            <h3 class="pb-3 mb-4 font-italic border-bottom">
                <?= $book['author'] ?>
            </h3>
            <div class="blog-post">
                <h2 class="blog-post-title"><?= $book['title'] ?></h2>
                <p class="blog-post-meta"><?= $book['category'] ?> - Année: <?= $book['year'] ?> - ISBN: <?= $book['isbn'] ?></p>

                <p><?= $book['description'] ?></p>
            </div>
        </div>
    </div>
    <hr>
    <br>
    <div class="d-flex gap-3">
        <button type="button" class="btn btn-outline-danger btn-lg text-bg-warning" data-bs-toggle="modal" data-bs-target="#editBook">
            Modifier
        </button>
        <form method="POST">
            <input name="id" type="text" value="<?= $book['id'] ?>" hidden>
            <input name="delete" type="submit" class="btn btn-lg btn-danger" value="Supprimer">
        </form>
    </div>
</main>



<!-- Modal - TODO : sécuriser le formulaire d'édition de livre --> 
<div class="modal fade" id="editBook" tabindex="-1" role="dialog" aria-labelledby="editBookLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="editBookLabel">Livre - <?= $book['title'] ?></h5>
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST">
            <input name="id" type="text" value="<?= $book['id']; ?>" hidden>
            <div class="form-group">
                <label for="titreBook">Titre</label>
                <input type="text" value="<?= $book['title'] ?>" class="form-control" name="title" id="titreBook" aria-describedby="titreHelp" placeholder="Entrez un Titre"  required>
                <small id="titreHelp" class="form-text text-muted">Indiquez un titre</small>
            </div>
            <div class="form-group">
                <label for="auteurBook">Auteur</label>
                <input type="text" value="<?= $book['author'] ?>" class="form-control" name="author" id="auteurBook" aria-describedby="auteurHelp" placeholder="Entrez un Auteur" required>
                <small id="auteurHelp" class="form-text text-muted">Indiquez un auteur</small>
            </div>
            <div class="form-group">
                <label for="descBook">Description</label>
                <input value="<?= $book['description'] ?>" class="form-control" name="description" id="descBook" aria-describedby="descHelp" placeholder="Entrez une description" required>
                <small id="descHelp" class="form-text text-muted">Indiquez une description</small>
            </div>
            <div class="form-group">
                <label for="catBook">Catégorie</label>
                <select class="custom-select form-control" name="category" id="catBook" placeholder="Entrez une categorie" required>
                    <option <?= $book['category'] == 'roman' ? "selected" : "" ?> value = "roman"> Roman</option>
                    <option <?= $book['category'] == 'poésie' ? "selected" : "" ?> value = "poésie"> Poésie</option>
                    <option <?= $book['category'] == 'théâtre' ? "selected" : "" ?> value = "théâtre"> théâtre</option>
                    <option <?= $book['category'] == 'biographie' ? "selected" : "" ?> value = "biographie"> Biographie</option>
                    <option <?= $book['category'] == 'essai' ? "selected" : "" ?> value = "essai"> Essai</option>
                </select>
            </div>
            <div class="form-group">
                <label for="anneeBook">Année</label>
                <input type="text" value="<?= $book['year'] ?>" class="form-control" name="year" id="anneeBook" maxlength="4" minlength="4" pattern="\d{4}" aria-describedby="anneeHelp" placeholder="Tapez une année" required>
                <small id="anneeHelp" class="form-text text-muted">Entrez une année</small>
            </div>
            <div class="form-group">
                <label for="isbnBook">ISBN</label>
                <input type="text" value="<?= $book['isbn'] ?>" class="form-control" name="isbn" id="isbnBook" aria-describedby="isbnHelp" placeholder="Entrez un n° isbn" required>
                <small id="isbnHelp" class="form-text text-muted">Insérer un isbn</small>
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