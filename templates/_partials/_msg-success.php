    <?php if(isset($_GET['success'])) : ?>
        <?php if($_GET['success']) : ?>
            <div id="msgAlert" class="alert alert-success" role="alert">Enregistrement réussi !</div>
        <?php elseif(!$_GET['success'])  : ?>
            <div id="msgAlert" class="alert alert-danger" role="alert">Erreur, veuillez réessayer</div>
        <?php endif ?>
    <?php endif ?>