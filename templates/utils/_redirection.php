<?php
       $adr=basename($_SERVER['HTTP_REFERER']);
       if (str_contains($adr, 'localhost')) {
           $adr = "/";
       }
       if (str_contains($adr, '?')) {
        $pos = strrpos($adr, '?', 0);
            $adr = substr($adr, 0, $pos);
        }

       if($query){
            //On redirige vers la même page avec un message 
            header('Location: '. $adr . '?success=1');
       }else{
           //On redirige vers la même page avec un message 
            header('Location: '. $adr . '?success=0');
       }