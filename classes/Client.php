<?php

class Client {
    private ?int $id;
    private ?string $firstname;
    private ?string $lastname;
    private ?string $address;
    private ?string $city;
    private ?string $country;
    private ?int $year;
    private ?bool $deposit;


/**
 * CLIENT CLASS'S GETTERS & SETTERS
 */
    /**
     * Get the value of id
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of firstname
     */
    public function getFirstname()
    {
        return $this->firstname;
    }

    /**
     * Set the value of firstname
     *
     * @return  self
     */
    public function setFirstname($firstname)
    {
        $this->firstname = $firstname;

        return $this;
    }

    /**
     * Get the value of lastname
     */
    public function getLastname()
    {
        return $this->lastname;
    }

    /**
     * Set the value of lastname
     *
     * @return  self
     */
    public function setLastname($lastname)
    {
        $this->lastname = $lastname;

        return $this;
    }

    /**
     * Get the value of address
     */
    public function getAddress()
    {
        return $this->address;
    }

    /**
     * Set the value of address
     *
     * @return  self
     */
    public function setAddress($address)
    {
        $this->address = $address;

        return $this;
    }

    /**
     * Get the value of city
     */
    public function getCity()
    {
        return $this->city;
    }

    /**
     * Set the value of city
     *
     * @return  self
     */
    public function setCity($city)
    {
        $this->city = $city;

        return $this;
    }

    /**
     * Get the value of country
     */
    public function getCountry()
    {
        return $this->country;
    }

    /**
     * Set the value of country
     *
     * @return  self
     */
    public function setCountry($country)
    {
        $this->country = $country;

        return $this;
    }

    /**
     * Get the value of year
     */ 
    public function getYear()
    {
        return $this->year;
    }

    /**
     * Set the value of year
     *
     * @return  self
     */ 
    public function setYear($year)
    {
        $this->year = $year;

        return $this;
    }

    /**
     * Get the value of deposit
     */ 
    public function getDeposit()
    {
        return $this->deposit;
    }

    /**
     * Set the value of deposit
     *
     * @return  self
     */ 
    public function setDeposit($deposit)
    {
        $this->deposit = $deposit;

        return $this;
    }

    //Méthode statique pour lister les clients par ordre alphabétique du nom puis du prénom
    public static function getClients(): array
    {
        //requête SQL pour lister tous les clients
        $sql = "SELECT * FROM clients ORDER BY lastname, firstname ;";
        //connexion bdd
        $db = Connect::connect();

        //On effectue un le query sur la bdd
        $query = $db->prepare($sql);

        //On execute la requete sur la bdd
        $query->execute();

        //On recupere tous les clients dans un tableau associatif
        $clients = $query->fetchAll(
            PDO::FETCH_ASSOC
        );

        //on effectue un return pour avoir les données des clients
        return $clients;
    
    }

    //Méthode statique de paiement de caution
    public static function depositPay($id): void
    {
        //requête SQL pour mettre à jour la fiche client avec deposit = true
        $sql = "UPDATE clients SET deposit= :deposit WHERE id = :id ;";
        //connexion bdd
        $db = Connect::connect();

        //On effectue un le query sur la bdd
        $query = $db->prepare($sql);

        //On lie les valeurs aux paramètres
            $query->bindValue(':id', $id , PDO::PARAM_INT);
            $query->bindValue(':deposit', true , PDO::PARAM_BOOL);

        //On execute la requete sur la bdd
        $query->execute();

        // if($query){
        //         //redirection
        //         header('Location: client.php?id=' . $id);
        // }else{
        //         //redirection
        //         header('Location: clients.php?success=0');
        // }
    
    }
}

