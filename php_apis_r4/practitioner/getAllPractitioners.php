<?php
header("Access-Control-Allow-Origin: *");
// include db connect class

require "../connect.php";
$db->query("SET CHARACTER SET utf8;");
$db->query("SET collation_connection = utf8_general_ci;");

/* Validate User */

$authorization_key = $_POST['authorization_key']; 
$active_inactive_filter = $_POST['active_inactive_filter'];

$valid_user = FALSE;

$validate_sql = "select * from user where authorization_key = '$authorization_key'";
$validate_query = mysqli_query($db, $validate_sql);
while($row = mysqli_fetch_array($validate_query, MYSQLI_ASSOC)){
	$valid_user = TRUE;
}

/////////////////////////////////////// Main Query /////////////////////////////////////////////////////////

if($valid_user) {

switch ($active_inactive_filter) {
  case "BOTH":
    $sql = "select * from practitioner p";
    break;
  case "ACTIVE":
    $sql = "select * from practitioner p where p.active_flag = 1";
    break;
  case "INACTIVE":
    $sql = "select * from practitioner p where p.active_flag = 0";
    break;    
  default:
     $sql = "select * from practitioner p";
}


$query = mysqli_query($db, $sql);
$numb_rows = mysqli_num_rows($query);

if($numb_rows > '0'){
while($row = mysqli_fetch_array($query, MYSQLI_ASSOC)){
	
	$practitioner_id = $row["practitioner_id"];
	$response["resourceType"] = "Practitioner";

	if(isset($row["active"]))
	{$response["active"] = $row["active"];}
	else{$response["active"] = '';}

	if(isset($row["gender"]))
	{$response["gender"] = $row["gender"];}
	else{$response["gender"] = '';}

	if(isset($row["birth_date"]))
	{$response["birthDate"] = $row["birth_date"];}
	else{$response["birthDate"] = '';}

	if(isset($row["deceased_boolean"]))
	{$response["deceasedBoolean"] = $row["deceased_boolean"];}
	else{$response["deceasedBoolean"] = '';}

	if(isset($row["deceased_date_time"]))
	{$response["deceasedDateTime"] = $row["deceased_date_time"];}
	else{$response["deceasedDateTime"] = '';}


////////////////////////////////////// (1) Identifier Query //////////////////////////////////////////////////////////


	$response["identifier"] = array();
	$sql_1 = "select * from datatype_identifier where entity_name = 'practitioner' and field_name = 'identifier'
	and entity_id = $practitioner_id";
	$query_1 = mysqli_query($db, $sql_1);

	while($row_1 = mysqli_fetch_array($query_1, MYSQLI_ASSOC)){

			$identifier_array = array();													
			$identifier_array["use"] = $row_1["use"];
			$identifier_array["system"] = $row_1["system"];
			$identifier_array["value"] = $row_1["value"];
			array_push($response["identifier"], $identifier_array);
	}	

////////////////////////////////////// (2) HumanName Query //////////////////////////////////////////////////////////


	$response["name"] = array();
	$sql_2 = "select * from datatype_human_name where entity_name = 'practitioner' and field_name = 'name'
	and entity_id = $practitioner_id";
	$query_2 = mysqli_query($db, $sql_2);

	while($row_2 = mysqli_fetch_array($query_2, MYSQLI_ASSOC)){

			$dt_human_name_id = $row_2["dt_human_name_id"];
			$name_array = array();													
			$name_array["use"] = $row_2["use"];
			$name_array["text"] = $row_2["text"];
			$name_array["family"] = $row_2["family"];				
			$name_array["given"] = array();
			$name_array["prefix"] = array();
			$name_array["suffix"] = array();

				/* 2.1) HumanName Given Query */
				
				$sql_2_1 = "select * from datatype_human_name_given where dt_human_name_id = $dt_human_name_id";
				$query_2_1 = mysqli_query($db, $sql_2_1);

				while($row_2_1 = mysqli_fetch_array($query_2_1, MYSQLI_ASSOC)){

				$given_array = array();													
				$given_array = $row_2_1["given"];			
				array_push($name_array["given"], $given_array);				}


				/* 2.2) HumanName Prefix Query */
				
				$sql_2_2 = "select * from datatype_human_name_prefix where dt_human_name_id = $dt_human_name_id";
				$query_2_2 = mysqli_query($db, $sql_2_2);

				while($row_2_2 = mysqli_fetch_array($query_2_2, MYSQLI_ASSOC)){

				$prefix_array = array();													
				$prefix_array = $row_2_2["prefix"];			
				array_push($name_array["prefix"], $prefix_array);
				}

				/* 2.3) HumanName Suffix Query */
				
				$sql_2_3 = "select * from datatype_human_name_suffix where dt_human_name_id = $dt_human_name_id";
				$query_2_3 = mysqli_query($db, $sql_2_3);

				while($row_2_3 = mysqli_fetch_array($query_2_3, MYSQLI_ASSOC)){

				$suffix_array = array();													
				$suffix_array = $row_2_3["suffix"];			
				array_push($name_array["suffix"], $suffix_array);
				}


		array_push($response["name"], $name_array);			
		
	}	

////////////////////////////////////// (3) Telecom Query //////////////////////////////////////////////////////////

	$response["telecom"] = array();
	$sql_3 = "select * from datatype_contactpoint where entity_name = 'practitioner' and field_name = 'telecom'
	and entity_id = $practitioner_id";
	$query_3 = mysqli_query($db, $sql_3);

	while($row_3 = mysqli_fetch_array($query_3, MYSQLI_ASSOC)){

			$telecom_array = array();													
			$telecom_array["use"] = $row_3["use"];
			$telecom_array["system"] = $row_3["system"];
			$telecom_array["value"] = $row_3["value"];
			array_push($response["telecom"], $telecom_array);
	}	


////////////////////////////////////// (5) Address Query //////////////////////////////////////////////////////////


	$response["address"] = array();
	$sql_5 = "select * from datatype_address where entity_name = 'practitioner' and field_name = 'address'
	and entity_id = $practitioner_id";
	$query_5 = mysqli_query($db, $sql_5);

	while($row_5 = mysqli_fetch_array($query_5, MYSQLI_ASSOC)){

			$dt_address_id = $row_5["dt_address_id"];
			$address_array = array();													
			$address_array["use"] = $row_5["use"];
			$address_array["type"] = $row_5["type"];
			$address_array["text"] = $row_5["text"];	
			$address_array["city"] = $row_5["city"];
			$address_array["district"] = $row_5["district"];
			$address_array["state"] = $row_5["state"];
			$address_array["postalcode"] = $row_5["postalcode"];
			$address_array["country"] = $row_5["country"];
			$address_array["line"] = array();

			/* 5.1) Adddress Line Query */
				
				$sql_5_1 = "select * from datatype_address_line where dt_address_id = $dt_address_id";
				$query_5_1 = mysqli_query($db, $sql_5_1);

				while($row_5_1 = mysqli_fetch_array($query_5_1, MYSQLI_ASSOC)){
				$line_array = array();													
				$line_array = $row_5_1["line"];			
				array_push($address_array["line"], $line_array);			
				}	
			
			array_push($response["address"], $address_array);			

		}



//////////////////////////////////////  Echo All Rows //////////////////////////////////////////////////////////

	
	echo json_encode($response,JSON_UNESCAPED_UNICODE);
    			
}
}else {
	$response["status"] = "failure";
	$response["reason"] = "No Data";
	echo json_encode($response,JSON_UNESCAPED_UNICODE);
}

} else 
{
	$response["status"] = "failure";
	$response["reason"] = "Invalid Authorization Key";
	echo json_encode($response,JSON_UNESCAPED_UNICODE);
}

?>