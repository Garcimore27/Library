<?php

// require "Classes/Book.php";

// foreach (Book::getBooks() as $book) {
//     echo $book['title']."<br>";
// }

require 'services/Slug.php';
echo Slug::toSlug('Bonjour Martin !');




