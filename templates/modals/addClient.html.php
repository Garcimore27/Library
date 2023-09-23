<!-- Modal - TODO : sécuriser le formulaire d'ajout de client --> 
<div class="modal fade" id="addClient" tabindex="-1" role="dialog" aria-labelledby="addClientLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addClientLabel">Ajouter un Client</h5>
        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST">
            <div class="form-group">
                <label for="firstnameClient">Prénom</label>
                <input type="text" class="form-control" name="firstname" id="firstnameClient" aria-describedby="firstnameClientHelp" placeholder="Entrez un Prénom"  required>
                <small id="firstnameClientHelp" class="form-text text-muted">Indiquez un prénom</small>
            </div>
            <div class="form-group">
                <label for="lastnameClient">Nom</label>
                <input type="text" class="form-control" name="lastname" id="lastnameClient" aria-describedby="lastnameClientHelp" placeholder="Entrez un Nom" required>
                <small id="lastnameClientHelp" class="form-text text-muted">Indiquez un nom</small>
            </div>
            <div class="form-group">
                <label for="addressClient">Adresse</label>
                <input type="text" class="form-control" name="address" id="addressClient" aria-describedby="addressClientHelp" placeholder="Entrez une adresse" required>
                <small id="addressClientHelp" class="form-text text-muted">Indiquez une adresse</small>
            </div>
            <div class="form-group">
                <label for="cityClient">Ville</label>
                <input type="text" class="form-control" name="city" id="cityClient" aria-describedby="cityClientHelp" placeholder="Entrez une ville" required>
                <small id="cityClientHelp" class="form-text text-muted">Indiquez une ville</small>
            </div>
            <div class="form-group">
                <label for="countryClient">Pays</label>
                <input type="text" class="form-control" name="country" id="countryClient" aria-describedby="countryClientHelp" placeholder="Entrez un pays" required>
                <small id="countryClientHelp" class="form-text text-muted">Indiquez un pays</small>
            </div>
            <div class="form-group">
                <label for="yearClient">Année</label>
                <input type="text" class="form-control" name="year" id="yearClient" aria-describedby="yearClientHelp" placeholder="Entrez une année de Naissance" required>
                <small id="yearClientHelp" class="form-text text-muted">Indiquez une année de naissance</small>
            </div>
            <!-- <div class="form-group">
                <label for="depositClient">Caution Payée ?</label>
                <input type="text" class="form-control" name="deposit" id="depositClient" aria-describedby="depositClientHelp" placeholder="Caution payée ?" required>
                <small id="depositClientHelp" class="form-text text-muted">Indiquez si la caution a été payée</small>
            </div> -->
            <div class="form-group" role="group" aria-label="Caution">
                <input type="checkbox" name="deposit" class="btn-check" id="btncheck1" autocomplete="off">
                <label class="btn btn-outline-primary" for="btncheck1">Caution payée ?</label>
            </div>
            <br>
            <div class="row mt-2 offset-md-1">
                <div class="col-md-5">
                    <button type="submit" name="addClient" class="btn btn-success">
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
