<?php

//Chargement de la classe Connect
require_once 'configuration/Connect.php';

class Reservation {
    private ?int $id;
    private ?int $client_id;
    private ?int $book_id;
    private ?string $date_start;
    private ?string $date_end;
    private ?string $date_return;
    private ?bool $isClosed;
    private ?bool $isArchived;

    public function getId() {
        return $this->id;
    }

    public function setId($id) {
        $this->id = $id;
        return $this;
    }

    public function getBookId() {
        return $this->book_id;
    }

    public function setBookId($book_id) {
        $this->book_id = $book_id;
        return $this;
    }

    public function getClientId() {
        return $this->client_id;
    }

    public function setClientId($client_id) {
        $this->client_id = $client_id;
        return $this;
    }


    /**
     * Get the value of isClosed
     */ 
    public function getIsClosed()
    {
        return $this->isClosed;
    }

    /**
     * Set the value of isClosed
     *
     * @return  self
     */ 
    public function setIsClosed($isClosed)
    {
        $this->isClosed = $isClosed;

        return $this;
    }

    /**
     * Get the value of isArchived
     */ 
    public function getIsArchived()
    {
        return $this->isArchived;
    }

    /**
     * Set the value of isArchived
     *
     * @return  self
     */ 
    public function setIsArchived($isArchived)
    {
        $this->isArchived = $isArchived;

        return $this;
    }

    
    /**
     * Get the value of date_return
     */ 
    public function getDate_return()
    {
        return $this->date_return;
    }

    /**
     * Set the value of date_return
     *
     * @return  self
     */ 
    public function setDate_return($date_return)
    {
        $this->date_return = $date_return;

        return $this;
    }

        /**
     * Get the value of date_start
     */ 
    public function getDate_start()
    {
        return $this->date_start;
    }

    /**
     * Set the value of date_start
     *
     * @return  self
     */ 
    public function setDate_start($date_start)
    {
        $this->date_start = $date_start;

        return $this;
    }

    /**
     * Get the value of date_end
     */ 
    public function getDate_end()
    {
        return $this->date_end;
    }

    /**
     * Set the value of date_end
     *
     * @return  self
     */ 
    public function setDate_end($date_end)
    {
        $this->date_end = $date_end;

        return $this;
    }

        //Méthode statique pour obtenir une liste de toutes les réservations encore ouvertes
        public static function getCurrentReservations(): array
        {
            //requête SQL pour récupérer les 20 réservations non cloturées et non archivées
            //pour lesquelles les retours sont imminents ou dépassés
            //ainsi que les nom et prénom des clients de ces réservations
            //et les titre et auteur des livres concernés
            //triées par date de démarrage des réservations
            $sql = "SELECT cbr.*, c.firstname, c.lastname, b.title, b.author  FROM clients_books_reservations AS cbr
                    LEFT JOIN clients AS c ON cbr.client_id = c.id
                    LEFT JOIN book AS b ON cbr.book_id = b.id
                    WHERE cbr.isClosed = 0 AND cbr.isArchived = 0
                    ORDER BY cbr.date_start
                    LIMIT 20 ;";

            //connexion bdd
            $db = Connect::connect();

            //On effectue un le query sur la bdd
            $query = $db->prepare($sql);
            //On execute la requete sur la bdd
            $query->execute();
            //On recupère toutes les réservations dans un tableau associatif
            $reservations = $query->fetchAll(
                PDO::FETCH_ASSOC
            );

            //on effectue un return pour avoir les données des livres
            return $reservations;
        }

    //Méthode statique de suppression de réservation
    public static function deleteReservation($id): void
       {
            //requête SQL pour supprimer une réservation
            $sql = "DELETE FROM clients_books_reservations WHERE id = :id";

            //connexion bdd
            $db = Connect::connect();
   
            //On effectue le query sur la bdd
            $query = $db->prepare($sql);

            //On lie les valeurs aux paramètres
            $query->bindValue(':id', $id , PDO::PARAM_INT);
           
            //On execute la requete sur la bdd
            $query->execute();

            //redirection vers reservations.php
            header('Location: /reservations.php');
        }

    //Méthode statique de cloture de réservation (isClosed = true)
    public static function closeReservation($id): void
       {
            //requête SQL pour cloturer une réservation
            $sql = "UPDATE clients_books_reservations SET isClosed= 1, date_return = :dateRetour WHERE id = :id ;";
            $dateRetour = (new DateTime('now'))->format('Y-m-d');
            //connexion bdd
            $db = Connect::connect();
            //On effectue le query sur la bdd
            $query = $db->prepare($sql);
            //On lie les valeurs aux paramètres
            $query->bindValue(':id', $id , PDO::PARAM_INT);
            $query->bindValue(':dateRetour', $dateRetour , PDO::PARAM_STR);
           
            //On execute la requete sur la bdd
            $query->execute();

            //redirection vers reservations.php
            //header('Location: /reservations.php');
        }

    //Méthode statique d'archivage de réservation
    public static function archiveReservation($id): void
       {
            //requête SQL pour archiver une réservation
            $sql = "UPDATE clients_books_reservations SET isArchived= :isArchived WHERE id = :id";

            //connexion bdd
            $db = Connect::connect();
   
            //On effectue le query sur la bdd
            $query = $db->prepare($sql);

            //On lie les valeurs aux paramètres
            $query->bindValue(':id', $id , PDO::PARAM_INT);
            $query->bindValue(':isArchived', true , PDO::PARAM_BOOL);

            //On execute la requete sur la bdd
            $query->execute();

            //redirection vers reservations.php
            header('Location: /reservations.php');
        }

    //Méthode statique pour lister les réservations à archiver (> 6 mois)
    public static function mustBeArchivedReservations(): void
        {
            //variable contenant la date d(il y a 6 mois)
            $dateLimit = new DateTime("-6 months");

            //requête SQL pour archiver une réservation
            $sql = "SELECT cbr.*, c.firstname, c.lastname, b.title, b.author  FROM clients_books_reservations AS cbr
            LEFT JOIN clients AS c ON cbr.client_id = c.id
            LEFT JOIN book AS b ON cbr.book_id = b.id
            WHERE cbr.isArchived = 0 AND isClosed = 1 AND cbr.date_end < :dateLimit
            ORDER BY cbr.date_start DESC";

            //connexion bdd
            $db = Connect::connect();

            //On effectue le query sur la bdd
            $query = $db->prepare($sql);

            //On lie les valeurs aux paramètres
            $query->bindValue(':dateLimit', $dateLimit , PDO::PARAM_INT);
            
            //On execute la requete sur la bdd
            $query->execute();

            //redirection vers reservations.php
            header('Location: /reservations.php');
        }

    //Méthode statique pour obtenir une liste de toutes les réservations
    public static function getAllReservations(): array
        {
            //requête SQL pour récupérer toutes les réservations
            //ainsi que les nom et prénom des clients de ces réservations
            //et les titre et auteur des livres concernés
            //triées par date de démarrage croissante des réservations
            $sql = "SELECT cbr.*, c.firstname, c.lastname, b.title, b.author  FROM clients_books_reservations AS cbr
                    LEFT JOIN clients AS c ON cbr.client_id = c.id
                    LEFT JOIN book AS b ON cbr.book_id = b.id
                    ORDER BY cbr.isArchived, cbr.isClosed, cbr.date_start ;";

            //connexion bdd
            $db = Connect::connect();

            //On effectue un le query sur la bdd
            $query = $db->prepare($sql);
            //On execute la requete sur la bdd
            $query->execute();
            //On recupère toutes les réservations dans un tableau associatif
            $reservations = $query->fetchAll(
                PDO::FETCH_ASSOC
            );

            //on effectue un return pour avoir les données des livres
            return $reservations;
        }

    //Méthode statique pour obtenir une liste de toutes les réservations non archivées
    public static function getReservations(): array
        {
            //requête SQL pour récupérer toutes les réservations non archivées
            //ainsi que les nom et prénom des clients de ces réservations
            //et les titre et auteur des livres concernés
            //triées par date de démarrage décroissante des réservations
            $sql = "SELECT cbr.*, c.firstname, c.lastname, b.title, b.author  FROM clients_books_reservations AS cbr
                    LEFT JOIN clients AS c ON cbr.client_id = c.id
                    LEFT JOIN book AS b ON cbr.book_id = b.id
                    WHERE cbr.isArchived = 0
                    ORDER BY cbr.date_start DESC";

            //connexion bdd
            $db = Connect::connect();

            //On effectue un le query sur la bdd
            $query = $db->prepare($sql);
            //On execute la requete sur la bdd
            $query->execute();
            //On recupère toutes les réservations dans un tableau associatif
            $reservations = $query->fetchAll(
                PDO::FETCH_ASSOC
            );

            //on effectue un return pour avoir les données des livres
            return $reservations;
        }

    //Méthode statique pour obtenir les infos d'une réservation
    public static function getOneReservation($id): array
        {
           //requête SQL pour récupérer une réservation
           //avec le nom et prénom du client qui a réservé
           //ainsi que le titre et l'auteur du livre réservé
           $sql = "SELECT cbr.*, c.firstname, c.lastname, b.title, b.author  FROM clients_books_reservations AS cbr
           LEFT JOIN clients AS c ON cbr.client_id = c.id
           LEFT JOIN book AS b ON cbr.book_id = b.id
           WHERE cbr.id = :id ;";

           //connexion bdd
           $db = Connect::connect();
   
           //On effectue un le query sur la bdd
           $query = $db->prepare($sql);

            //On lie les valeurs aux paramètres
            $query->bindValue(':id', $id , PDO::PARAM_INT);
           
            //On execute la requete sur la bdd
           $query->execute();

           //on effectue un return pour avoir les données de la résevation en tableau associatif
           $reservation = $query->fetch(
                    PDO::FETCH_ASSOC
                );
           return $reservation;
        }

    //Méthode statique d'ajout de réservation
    public static function addReservation($obj): void
        {
            //requête SQL pour ajouter une réservation
            $sql = "INSERT INTO clients_books_reservations(client_id, book_id, date_start, date_end, date_return, isClosed, isArchived) VALUES(:client_id, :book_id, :start_date, :end_date, :return_date, :isClosed, :isArchived);";
            //connexion bdd
            $db = Connect::connect();
            //On effectue un le query sur la bdd
            $query = $db->prepare($sql);
        //On lie les valeurs aux paramètres
            $query->bindValue(':client_id', $obj->getClientId() , PDO::PARAM_INT);
            $query->bindValue(':book_id', $obj->getBookId(), PDO::PARAM_INT);
            $query->bindValue(':start_date', $obj->getDate_start(), PDO::PARAM_STR);
            $query->bindValue(':end_date', $obj->getDate_end() , PDO::PARAM_STR);
            $query->bindValue(':return_date', $obj->getDate_return() , PDO::PARAM_STR);
            $query->bindValue(':isClosed', $obj->getIsClosed() , PDO::PARAM_BOOL);
            $query->bindValue(':isArchived', $obj->getIsArchived() , PDO::PARAM_BOOL);

            //On execute la requete sur la bdd
            $query->execute();

            if($query){
                    //On redirige vers la même page avec un message 
                    header('Location: reservations.php?success=1');
            }else{
                //On redirige vers la même page avec un message 
                    header('Location: reservations.php?success=0');
            }
       
        }

    //Méthode statique de mise à jour d'une réservation
    public static function editReservation($obj): void
        {
            //requête SQL pour màj une réservation
            $sql = "UPDATE clients_books_reservations SET client_id= :client_id, book_id= :book_id, date_start= :start_date, date_end= :end_date, date_return= :return_date, isClosed= :isClosed, isArchived= :isArchived WHERE id = :id ;";
            //connexion bdd
            $db = Connect::connect();

            //On effectue un le query sur la bdd
            $query = $db->prepare($sql);

            //On lie les valeurs aux paramètres
                $query->bindValue(':id', $obj->getId() , PDO::PARAM_INT);
                $query->bindValue(':client_id', $obj->getClientId() , PDO::PARAM_INT);
                $query->bindValue(':book_id', $obj->getBookId() , PDO::PARAM_INT);
                $query->bindValue(':start_date', $obj->getDate_start(), PDO::PARAM_STR);
                $query->bindValue(':end_date', $obj->getDate_end(), PDO::PARAM_STR);
                $query->bindValue(':return_date', $obj->getDate_return(), PDO::PARAM_STR);
                $query->bindValue(':isClosed', $obj->getIsClosed() , PDO::PARAM_BOOL);
                $query->bindValue(':isArchived', $obj->getIsArchived() , PDO::PARAM_BOOL);

            //On execute la requete sur la bdd
            $query->execute();

            if($query){
                    //redirection
                    header('Location: reservation.php?id=' . $obj->getId());
            }else{
                    //redirection
                    header('Location: reservations.php?success=0');
            }
        
        }

    //Méthode statique pour obtenir une liste de toutes les réservations d'1 client
    public static function getReservationsByClient($clientId): array
    {
        //requête SQL pour récupérer toutes les réservations pour 1 client
        //ainsi que les nom et prénom du client de ces réservations
        //et les titre et auteur des livres concernés
        //triées par date de démarrage décroissante des réservations
        $sql = "SELECT cbr.*, c.firstname, c.lastname, b.title, b.author  FROM clients_books_reservations AS cbr
                LEFT JOIN clients AS c ON cbr.client_id = c.id
                LEFT JOIN book AS b ON cbr.book_id = b.id
                WHERE cbr.client_id = :clientId
                ORDER BY cbr.date_start DESC";

        //connexion bdd
        $db = Connect::connect();

        //On effectue un le query sur la bdd
        $query = $db->prepare($sql);

        //On lie les valeurs aux paramètres
        $query->bindValue(':clientId', $clientId , PDO::PARAM_INT);

        //On execute la requete sur la bdd
        $query->execute();
        //On recupère toutes les réservations dans un tableau associatif
        $reservations = $query->fetchAll(
            PDO::FETCH_ASSOC
        );

        //on effectue un return pour avoir les données des livres
        return $reservations;
    }

        //Méthode statique pour obtenir une liste de toutes les réservations d'1 livre
        public static function getReservationsByBook($bookId): array
        {
            //requête SQL pour récupérer toutes les réservations pour 1 livre
            //ainsi que les nom et prénom des clients de ces réservations
            //et le titre et auteur du livre concerné
            //triées par date de démarrage décroissante des réservations
            $sql = "SELECT cbr.*, c.firstname, c.lastname, b.title, b.author  FROM clients_books_reservations AS cbr
                    LEFT JOIN clients AS c ON cbr.client_id = c.id
                    LEFT JOIN book AS b ON cbr.book_id = b.id
                    WHERE cbr.book_id = :bookId
                    ORDER BY cbr.date_start DESC";
    
            //connexion bdd
            $db = Connect::connect();
    
            //On effectue un le query sur la bdd
            $query = $db->prepare($sql);
    
            //On lie les valeurs aux paramètres
            $query->bindValue(':bookId', $bookId , PDO::PARAM_INT);
    
            //On execute la requete sur la bdd
            $query->execute();
            //On recupère toutes les réservations dans un tableau associatif
            $reservations = $query->fetchAll(
                PDO::FETCH_ASSOC
            );
    
            //on effectue un return pour avoir les données des livres
            return $reservations;
        }





}

