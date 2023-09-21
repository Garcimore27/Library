<?php

/**
 * fichier de composant pour la liste des livres sous forme de cartes
 */

 require_once 'classes/Book.php';

 foreach(Book::getBooks() as $book)  {
    include '_book-card.html.php';
}


