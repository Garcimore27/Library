<?php
//Chargement de la classe Connect
require_once 'configuration/Connect.php';
require_once 'services/Slug.php';

class Book {
    private ?int $id;
    private ?string $title;
    private ?string $author;
    private ?string $description;
    private ?string $cover;
    private ?string $category;
    private ?int $price;
    private ?int $year;
    private ?string $editor;
    private ?string $language;
    private ?int $pages;
    private ?string $format;
    private ?string $isbn;
    private ?bool $active;
    private ?string $slug;

    public function getId() {
        return $this->id;
    }

    public function setId($id) {
        $this->id = $id;
        return $this;
    }

    public function getTitle() {
        return $this->title;
    }

    public function setTitle($title) {
        $this->title = $title;
        return $this;
    }

    public function getAuthor() {
        return $this->author;
    }

    public function setAuthor($author) {
        $this->author = $author;
        return $this;
    }

    public function getDescription() {
        return $this->description;
    }

    public function setDescription($description) {
        $this->description = $description;
        return $this;
    }

    public function getCover() {
        return $this->cover;
    }

    public function setCover($cover) {
        $this->cover = $cover;
        return $this;
    }

    public function getCategory() {
        return $this->category;
    }

    public function setCategory($category) {
        $this->category = $category;
        return $this;
    }

    public function getPrice() {
        return $this->price;
    }

    public function setPrice($price) {
        $this->price = $price;
        return $this;
    }

    public function getYear() {
        return $this->year;
    }

    public function setYear($year) {
        $this->year = $year;
        return $this;
    }

    public function getEditor() {
        return $this->editor;
    }

    public function setEditor($editor) {
        $this->editor = $editor;
        return $this;
    }

    public function getLanguage() {
        return $this->language;
    }

    public function setLanguage($language) {
        $this->language = $language;
        return $this;
    }

    public function getPages() {
        return $this->pages;
    }

    public function setPages($pages) {
        $this->pages = $pages;
        return $this;
    }

    public function getFormat() {
        return $this->format;
    }

    public function setFormat($format) {
        $this->format = $format;
        return $this;
    }

    public function getIsbn() {
        return $this->isbn;
    }

    public function setIsbn($isbn) {
        $this->isbn = $isbn;
        return $this;
    }

    public function getActive() {
        return $this->active;
    }

    public function setActive($active) {
        $this->active = $active;
        return $this;
    }

    public function getSlug() {
        return $this->slug;
    }

    public function setSlug($slug) {
        $this->slug = Slug::toSlug($slug);
        return $this;
    }

    //custom methods

    public static function getBooks(): array
    {
        //requête SQL pour récupérer tous les livres
        $sql = "SELECT * FROM book ORDER BY title";
        //connexion bdd
        $db = Connect::connect();

        //On effectue un le query sur la bdd
        $query = $db->prepare($sql);
        //On execute la requete sur la bdd
        $query->execute();
        //On recupere tous les livres dans un tableau associatif
        $books = $query->fetchAll(
            PDO::FETCH_ASSOC
        );

        //on effectue un return pour avoir les données des livres
        return $books;
    }

    //Méthode pour récupérer une liste de livres qui ne comportent
    //pas de réservation en cours (Reservation.isClosed <> 1)
    public static function getAvailableBooks(): array
    {
        //requête SQL pour récupérer tous les livres n'ayant pas
        //de réservation en cours
        $sql = "SELECT b.* FROM book AS b LEFT JOIN clients_books_reservations AS cbr ON b.id = cbr.book_id WHERE b.id NOT IN (SELECT DISTINCT cbr.book_id WHERE cbr.isClosed <> 1) ORDER BY b.title ;";
        //connexion bdd
        $db = Connect::connect();

        //On effectue un le query sur la bdd
        $query = $db->prepare($sql);
        //On execute la requete sur la bdd
        $query->execute();
        //On recupere tous les livres dans un tableau associatif
        $books = $query->fetchAll(
            PDO::FETCH_ASSOC
        );

        //on effectue un return pour avoir les données des livres
        return $books;
    }

       //custom methods

       public static function getOneBook($slug): array
       {
           //requête SQL pour récupérer tous les livres
           $sql = "SELECT * FROM book WHERE slug = :slug";

           //connexion bdd
           $db = Connect::connect();
   
           //On effectue un le query sur la bdd
           $query = $db->prepare($sql);

            //On lie les valeurs aux paramètres
            $query->bindValue(':slug', $slug , PDO::PARAM_STR);
           
            //On execute la requete sur la bdd
           $query->execute();

           //On recupere tous les livres dans un tableau associatif
           //on effectue un return pour avoir les données du livre
           if($query->rowcount() > 0){
                return $query->fetch(
                    PDO::FETCH_ASSOC
                );
           }
       }

       public static function deleteBook($id): void
       {
            //requête SQL pour récupérer tous les livres
            $sql = "DELETE FROM book WHERE id = :id";

            //connexion bdd
            $db = Connect::connect();
   
            //On effectue un le query sur la bdd
            $query = $db->prepare($sql);

            //On lie les valeurs aux paramètres
            $query->bindValue(':id', $id , PDO::PARAM_INT);
           
            //On execute la requete sur la bdd
            $query->execute();

            //redirection vers books.php
            header('Location: /books.php');
       }


    public static function addBook($obj): void
    {
       //requête SQL pour ajouter un livre
       $sql = "INSERT INTO book(title, author, category, year, isbn, slug) VALUES(:title, :author, :category, :year, :isbn, :slug);";
       //connexion bdd
       $db = Connect::connect();

       //On effectue un le query sur la bdd
       $query = $db->prepare($sql);

       //On lie les valeurs aux paramètres
        $query->bindValue(':title', $obj->getTitle() , PDO::PARAM_STR);
        $query->bindValue(':author', $obj->getAuthor(), PDO::PARAM_STR);
        $query->bindValue(':category', $obj->getCategory(), PDO::PARAM_STR);
        $query->bindValue(':year', $obj->getYear() , PDO::PARAM_INT);
        $query->bindValue(':isbn', $obj->getIsbn() , PDO::PARAM_STR);
        $query->bindValue(':slug', $obj->getSlug() , PDO::PARAM_STR);

       //On execute la requete sur la bdd
       $query->execute();

       include 'templates/utils/_redirection.php';
       
    }

    public static function editBook($obj): void
    {
       //requête SQL pour ajouter un livre
       //UPDATE table SET nom_colonne_1 = 'nouvelle valeur' WHERE condition
       $sql = "UPDATE book SET title= :title, description= :description, author= :author, category= :category, year= :year, isbn= :isbn, slug= :slug WHERE id = :id ;";
       //connexion bdd
       $db = Connect::connect();

       //On effectue un le query sur la bdd
       $query = $db->prepare($sql);

       //On lie les valeurs aux paramètres
        $query->bindValue(':id', $obj->getId() , PDO::PARAM_INT);
        $query->bindValue(':title', $obj->getTitle() , PDO::PARAM_STR);
        $query->bindValue(':description', $obj->getDescription() , PDO::PARAM_STR);
        $query->bindValue(':author', $obj->getAuthor(), PDO::PARAM_STR);
        $query->bindValue(':category', $obj->getCategory(), PDO::PARAM_STR);
        $query->bindValue(':year', $obj->getYear() , PDO::PARAM_INT);
        $query->bindValue(':isbn', $obj->getIsbn() , PDO::PARAM_STR);
        $query->bindValue(':slug', $obj->getSlug() , PDO::PARAM_STR);

       //On execute la requete sur la bdd
       $query->execute();

       if($query){
            //On redirige vers la même page avec un message 
            header('Location: book.php?slug=' . $obj->getSlug());
       }else{
           //On redirige vers la même page avec un message 
            header('Location: books.php?success=0');
       }
       
    
       
    }


}

