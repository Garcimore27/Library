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
            <button type="button" name="resaBook" class="btn btn-success btn-sm text-light" data-bs-toggle="modal" data-bs-target="#resaBook">
                Réserver un Livre 
            </button>
        </div>

        <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
 </div>
 </div>