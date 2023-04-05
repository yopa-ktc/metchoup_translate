<?php
	// Connect to database
	include("db_connect.php");
	$request_method = $_SERVER["REQUEST_METHOD"];
	
	function AddSuggestion()
	{
		global $conn;
		$langue_arrive = $_POST["langue_arrive"];
		$expression_arrive = $_POST["expression_arrive"];
		$langue_depart = $_POST["langue_depart"];
		$expression_depart = $_POST["expression_depart"];
		$email = $_POST["email"];
		$expression_audio = $_POST["expression_audio"];
		$created = date('Y-m-d H:i:s');

		//modifier le nom du fichier à mettre dans la BD
		$son_Upload = '';
		if(isset($_FILES["expression_audio"])){
			$son_Upload = 'metchoup-'.$langue_depart.'-'.$langue_arrive.$email.''.basename($_FILES['expression_audio']['name']);
			move_uploaded_file($_FILES['expression_audio']['tmp_name'], 'expression_audio/metchoup-'.$email.$expression_depart.'-'.$expression_arrive.basename($_FILES['expression_audio']['name']));
		}
		$query="INSERT INTO suggestions (langue_source, langue_traduite, expression_source, expression_traduite, date_ajout, nom_audio, email_personne) VALUES('".$langue_depart."', '".$langue_arrive."', '".$expression_depart."', '".$expression_arrive."', '".$created."', '".$son_Upload."', '".$email."' )";
		if(mysqli_query($conn, $query))
		{
			$response=array(
				'status' => 1,
				'status_message' =>'Produit ajouté avec succès.'
			);
		}
		else
		{
			$response=array(
				'status' => 0,
				'status_message' =>'ERREUR!.'. mysqli_error($conn)
			);
		}
		header('Access-Control-Allow-Origin: *');
		header('Content-Type: application/json');
		echo json_encode($response);
	}
	
	
	switch($request_method)
	{
		default:
			// Invalid Request Method
			header("HTTP/1.0 405 Method Not Allowed");
			break;
			
		case 'POST':
			// Ajouter un produit
			AddSuggestion();
			break;

	}
?>