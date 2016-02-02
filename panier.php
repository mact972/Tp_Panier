<?php session_start();
include 'header.php';
require 'fonction.php';
$bdd= connect();

 ?>

 <h2 class>Votre Panier </h2>
         <table>
        <thead>
          <tr>
            <th class="text" >Produit</th>
			
            <th>Prix Unit.</th>
            <th>Quantité</th>
            <th>Montant</th>
             <th colspan='2'>Actions </th>
			</tr>
        </thead>
        <tbody>
           <?php

           $panier = $_SESSION['panier'];
           $montantotale = 0;
           foreach ($panier as $id => $quantite) {

              try{

                      $req = $bdd -> prepare("SELECT * FROM produit where id=:id");
                      $req -> bindParam('id', $id, PDO::PARAM_INT);
                      $req -> execute();
          
                      while ($produit = $req ->fetch(PDO::FETCH_OBJ))
                      {


                        $montant = $produit->prix * $quantite;
                        echo "<tr><th>".$produit->nom."</th><th>".$produit->prix."</th><th>".$quantite."</th><th>".number_format($montant, 2, ',', ' ')."</th></tr>";                            
                        $montantotale = $montantotale + $montant;

                      }


                  }

              catch(PDOException $e){

                        echo "erreur dans la requète " . $e->getMessage();
                  }


           }

           ?>
        </tbody>
      </table>

      <div class="total" >
         <?php echo "<p>Total HT</p><span>".number_format($montantotale, 2, ',', ' ')."</span>"; ?>
         <p>Frais de ports</p><span>5</span>
      </div>
<?php include 'footer.php'; ?>