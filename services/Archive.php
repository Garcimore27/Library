<?php

/**
 * Service de gestion des slugs pour biblioapp
 */

 class Archive
 {

    public DateTime $end;

    //Méthode pour archiver une réservation lorsque la date de rendu a plus de 6 mois
    public static function toArchive(DateTime $end):bool
    {
        $date = new DateTime("-6 months");
        return $end < $date;
    }

 }