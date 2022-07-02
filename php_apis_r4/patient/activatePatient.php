<?php
header("Access-Control-Allow-Origin: *");
// include db connect class

require "../connect.php";
$db->query("SET CHARACTER SET utf8;");
$db->query("SET collation_connection = utf8_general_ci;");

/* Validate User */

$authorization_key = $_POST['authorization_key']; 
$patient_id = $_POST['patient_id']; 
$session_user_id = $_POST['session_user_id']; 
$request_date = date('Y-m-d H:i:s');

$valid_user = FALSE;

$validate_sql = "select * from user where authorization_key = '$authorization_key'";
$validate_query = mysqli_query($db, $validate_sql);
while($row = mysqli_fetch_array($validate_query, MYSQLI_ASSOC)){
	$valid_user = TRUE;
}

/////////////////////////////////////// Main Query /////////////////////////////////////////////////////////

if($valid_user) {

foreach($patient_id as $a => $b){ 

		$active = 'true';

		$update = $db->prepare("update patient set active_flag = 1,updt_cnt = updt_cnt + 1,
		updt_user_id = ?,updt_dtm = ?,active = ? where patient_id = ?");
		$update->bind_param('issi',$session_user_id,$request_date ,$active,$patient_id[$a]);
		$update->execute();	
		
		}

	$response["status"] = "success";
	$response["reason"] = "Patients Activated Successfully";
	echo json_encode($response,JSON_UNESCAPED_UNICODE);

} else 
{
	$response["status"] = "failure";
	$response["reason"] = "Invalid Authorization Key";
	echo json_encode($response,JSON_UNESCAPED_UNICODE);
}

?>