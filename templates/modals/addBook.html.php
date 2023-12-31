<!-- Modal - TODO : sécuriser le formulaire d'ajout de livre --> 
<div class="modal fade" id="addBook" tabindex="-1" role="dialog" aria-labelledby="addBookLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addBookLabel">Ajouter un Livre</h5>
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST">
            <div class="form-group">
                <label for="titreBook">Titre</label>
                <input type="text" class="form-control" name="title" id="titreBook" aria-describedby="titreHelp" placeholder="Entrez un Titre"  required>
                <small id="titreHelp" class="form-text text-muted">Indiquez un titre</small>
            </div>
            <div class="form-group">
                <label for="auteurBook">Auteur</label>
                <input type="text" class="form-control" name="author" id="auteurBook" aria-describedby="auteurHelp" placeholder="Entrez un Auteur" required>
                <small id="auteurHelp" class="form-text text-muted">Indiquez un auteur</small>
            </div>
            <div class="form-group">
                <label for="catBook">Catégorie</label>
                <select value="" class="custom-select form-control" name="category" id="catBook" placeholder="Entrez une categorie" required>
                <option value = "roman"> Roman</option>
                    <option selected>Choisissez ...</option>
                    <option value = "poésie"> Poésie</option>
                    <option value = "théâtre"> théâtre</option>
                    <option value = "biographie"> Biographie</option>
                    <option value = "essai"> Essai</option>
                </select>
            </div>
            <div class="form-group">
                <label for="anneeBook">Année</label>
                <input type="text" class="form-control" name="year" id="anneeBook" maxlength="4" minlength="4" pattern="\d{4}" aria-describedby="anneeHelp" placeholder="Tapez une année" required>
                <small id="anneeHelp" class="form-text text-muted">Entrez une année</small>
            </div>
            <div class="form-group">
                <label for="isbnBook">ISBN</label>
                <input type="text" class="form-control" name="isbn" id="isbnBook" aria-describedby="isbnHelp" placeholder="Entrez un n° isbn" required>
                <small id="isbnHelp" class="form-text text-muted">Insérer un isbn</small>
            </div>
            <div class="row mt-2 offset-md-1">
                <div class="col-md-5">
                    <button type="submit" name="addBook" class="btn btn-success">
                        <i class="bi bi-save mx-2"></i>
                        Enregistrer
                    </button>
                </div>
                
                <div class="col-md-5 offset-md-1">
                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal" float-right>
                        <i class="bi bi-x-circle mx-2"></i>
                        Annuler
                    </button>
                </div>
            </div>
        </form>
      </div>
    </div>
  </div>
</div>
