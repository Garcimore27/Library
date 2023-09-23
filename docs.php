<html>

   <head>
      <title>TP</title>
   </head>
   
   <body>
   <h1>Agiliteach	Module - POO</h1>
 
 <h2>TP : Application Bibliothèque</h2>
 <p>Objectif : Le but de ce TP est de mettre en pratique les concepts de la POO pour une application de gestion de bibliothèque.
 Description du projet : Vous êtes chargé de développer des fonctionnalités du projet d’application BiblioApp.
 </p>
 <h3>Tâches à accomplir :</h3>
 <ul>
   <li>a. Créez une classe Client.</li>
   <ul>
     <li>-	id</li>
     <li>-	firstname</li>
     <li>-	lastname</li>
     <li>-	address</li>
     <li>-	city</li>
     <li>-	country</li>
     <li>-	year</li>
     <li>-	deposit</li>
     <li>---------</li>		
     <li>+	depositPay()</li>		
   </ul>
 </ul>
 <br>
 
 <h3>b.	Créez une classe Reservation pour leur gestion CRUD</h3>
 <ul>
   <li>Reservation</li>
   <ul>
     <li>-	id</li>
     <li>-	client_id</li>
     <li>-	book_id</li>
     <li>-	start_date</li>
     <li>-	end_date</li>
     <li>-	isClosed</li>
     <li>-	IsArchived</li>
     <li>---------</li>
     <li>+	add() +	edit()</li>
     <li>+	delete()</li>
     <li>+	close()</li>
     <li>+	archive()</li>
   </ul>
 </ul>
 <br>
 
 <h3>c.	La classe Reservation doit être accompagnée d’une page pour le READ (la vue).
 Cette page doit contenir :</h3>
 <ul>
 <li>-	Le nom du client</li>
 <li>-	Le titre du livre</li>
 <li>-	Les dates d’emprunt</li>
 </ul>
 
 <h3>d.	Concevez les tables nécessaires pour la base de données.</h3>
      
   </body>
</html>