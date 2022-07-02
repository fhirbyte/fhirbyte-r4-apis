<?php
header("Access-Control-Allow-Origin: *");
// include db connect class

require "connect.php";
$db->query("SET CHARACTER SET utf8;");
$db->query("SET collation_connection = utf8_general_ci;");

/* Validate User */

$authorization_key = $_POST['authorization_key']; 
$request_date = date('Y-m-d H:i:s');

$valid_user = FALSE;

$validate_sql = "select * from user where authorization_key = '$authorization_key'";
$validate_query = mysqli_query($db, $validate_sql);
while($row = mysqli_fetch_array($validate_query, MYSQLI_ASSOC)){
	$valid_user = TRUE;
	$user_id = $row["user_id"];
	$full_name = $row["full_name"];
	$authorization_key = $row["authorization_key"];
}

/////////////////////////////////////// Main Query /////////////////////////////////////////////////////////

if($valid_user) {

	$response["session_details"] = array();

	$response["session_details"]["session_user_id"] = $user_id;
	$response["session_details"]["full_name"] = $full_name;
	$response["session_details"]["authorization_key"] = $authorization_key;
	$response["status"] = "success";
	$response["reason"] = "Patients Details Fetched Successfully";
	echo json_encode($response,JSON_UNESCAPED_UNICODE);

} else 
{
	$response["status"] = "failure";
	$response["reason"] = "Invalid Authorization Key";
	echo json_encode($response,JSON_UNESCAPED_UNICODE);
}

?>