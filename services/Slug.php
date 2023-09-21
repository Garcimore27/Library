<?php

/**
 * Service de gestion des slugs pour biblioapp
 */

 class Slug
 {

    public string $input;

    //Méthode pour générer un slug
    public static function toSlug(string $input) 
    {

        return strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-', $input));

    }

 }