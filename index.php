<?php
session_start();
?>

<html lang="fr">
	
	<head>
		<link rel="stylesheet" href="style.css">
	</head>
	
	<body>

		<?php
		include_once('header.php');

		?>

		<form method="GET">
		

		<h2>Nos Produit <a href="panier.php">Voir le panier</a></h2>

		<?php

		if (!empty($_SESSION['succes'])) {
			
		?>

		<div class="success">
			<?php echo $_SESSION['succes'];?>
		</div>

		<?php

		}

		?>

		<table>

			<ul class='produits'>

			<?php
			require_once 'fonction.php';
			$bdd = connect();



			try{
					$req = "select * from produit";
					$resultat = $bdd->query($req);



					while ($produit = $resultat ->fetch(PDO::FETCH_OBJ))
					{

					 echo "<li><span class='titre' name='nom'>".$produit->nom."</span><span class='image'><img src='$produit->photo'></span><span class='prix' name='printer_draw_text(printer_handle, text, x, y)'>".$produit->prix."</span><button name='panier'><a href='ajout_panier.php?ajout=".$produit->id."'>Ajouter au panier</a></button></li>";

					
					}

				}

			catch(PDOException $e){

					echo "erreur dans la requète " . $e->getMessage();
				}


				?>
			</ul>

		</table>


		</form>



		<?php
		include_once('footer.php');
		?>

	</body>


</html>