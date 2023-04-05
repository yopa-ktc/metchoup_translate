<?php
	// Connect to database
	include("db_connect.php");
	$request_method = $_SERVER["REQUEST_METHOD"];
	
	function getExpressions($language)
	{
		try {
			global $conn;
			$query = "SELECT * FROM ".$language;
			$response = array();
			$result = mysqli_query($conn, $query);
			while($row = mysqli_fetch_array($result))
			{
				$response[] = $row;
			}
			header('Access-Control-Allow-Origin: *');
			header('Content-Type: application/json');
			echo json_encode($response, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
		} catch (\Throwable $th) {
			//throw $th;
			echo json_encode("ErrorLanguage");
		}
		
	}
	
	switch($request_method)
	{	
		case 'GET':
			// Retrive Expressions
			getExpressions($_GET["language"]);
			break;
		default:
			// Invalid Request Method
			header("HTTP/1.0 405 Method Not Allowed");
			break;
	}
?>