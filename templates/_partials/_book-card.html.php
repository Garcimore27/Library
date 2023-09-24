<?php

/**
 * fichier de composant pour un livre sous forme d'une carte
 */

 require_once 'classes/Book.php';

 ?>
<div class="card col-md-3 col-sm-5 col-sm-12 card-bg">
    <div class="card-body text-light">
        <h5 class="card-title"><?= substr($book['title'], 0, 20) ;?>...</h5>
        <h6 class="card-subtitle mb-2"><?= $book['author'] ;?></h6>
        <div class="row">
            <p class="card-text hg130"><?= substr($book['description'], 0, 110) ;?>...</p>
        </div>
        <div class="row">
            <a href="/book.php?slug=<?= $book['slug'] ;?>" class="btn btn-sm btn-outline-light">Voir</a>
            <a href="/reserveOneBook.php?slug=<?= $book['slug'] ;?>" class="btn btn-success btn-sm text-light">Réserver un Livre</a>
            <!-- <button type="button" name="resaBook" class="btn btn-success btn-sm text-light" data-bs-toggle="modal" data-bs-target="#resaBook">
                Réserver un Livre 
            </button> -->
        </div>
 </div>
 </div>