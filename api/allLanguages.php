<?php
	// Connect to database
	include("db_connect.php");
	$request_method = $_SERVER["REQUEST_METHOD"];

	function getProducts()
	{
		global $conn;
		$query = "SHOW TABLES IN metchoup_translate";
		$response = array();
		$result = mysqli_query($conn, $query);
		while($row = mysqli_fetch_array($result))
		{
			$response[] = $row;
		}
		header('Access-Control-Allow-Origin: *');
		header('Content-Type: application/json');
		echo json_encode($response, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
	}
	
	
	switch($request_method)
	{
		
		case 'GET':
			// Retrive Products
			getProducts();
			break;
		default:
			// Invalid Request Method
			header("HTTP/1.0 405 Method Not Allowed");
			break;
	}
?>