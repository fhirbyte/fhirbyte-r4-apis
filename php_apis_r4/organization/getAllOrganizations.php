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
    $sql = "select * from organization o";
    break;
  case "ACTIVE":
    $sql = "select * from organization o where o.active_flag = 1";
    break;
  case "INACTIVE":
    $sql = "select * from organization o where o.active_flag = 0";
    break;    
  default:
     $sql = "select * from organization o";
}


$query = mysqli_query($db, $sql);
$numb_rows = mysqli_num_rows($query);

if($numb_rows > '0'){
while($row = mysqli_fetch_array($query, MYSQLI_ASSOC)){
	
	$organization_id = $row["organization_id"];
	$response["resourceType"] = "Organization";

	if(isset($row["active"]))
	{$response["active"] = $row["active"];}
	else{$response["active"] = '';}

	if(isset($row["name"]))
	{$response["name"] = $row["name"];}
	else{$response["name"] = '';}

	if(isset($row["description"]))
	{$response["description"] = $row["description"];}
	else{$response["description"] = '';}

////////////////////////////////////// (1) Identifier Query //////////////////////////////////////////////////////////


	$response["identifier"] = array();
	$sql_1 = "select * from datatype_identifier where entity_name = 'organization' and field_name = 'identifier'
	and entity_id = $organization_id";
	$query_1 = mysqli_query($db, $sql_1);

	while($row_1 = mysqli_fetch_array($query_1, MYSQLI_ASSOC)){

			$identifier_array = array();													
			$identifier_array["use"] = $row_1["use"];
			$identifier_array["system"] = $row_1["system"];
			$identifier_array["value"] = $row_1["value"];
			array_push($response["identifier"], $identifier_array);
	}	


////////////////////////////////////// (2) Organization Type Query //////////////////////////////////////////////////////////
	
	$sql_2 = "select * from datatype_codeableconcept where entity_name = 'organization' and field_name = 'type'
	and entity_id = $organization_id";
	$query_2 = mysqli_query($db, $sql_2);

	while($row_2 = mysqli_fetch_array($query_2, MYSQLI_ASSOC)){

			$tp_dt_coding_id = $row_2["dt_coding_id"];															
			$response["type"]["text"] = $row_2["text"];		
			$response["type"]["coding"] = array();

			/* 2.1)  Organization Type Coding Query */
				
				$sql_2_1 = "select * from datatype_coding where dt_coding_id = $tp_dt_coding_id";
				$query_2_1 = mysqli_query($db, $sql_2_1);

				while($row_2_1 = mysqli_fetch_array($query_2_1, MYSQLI_ASSOC)){
				$tp_coding_array = array();													
				$tp_coding_array["code"] = $row_2_1["code"];
				$tp_coding_array["display"] = $row_2_1["display"];
				$tp_coding_array["system"] = $row_2_1["system"];		
				array_push($response["type"]["coding"], $tp_coding_array);
				}
	
					
	}	

////////////////////////////////////// (3) Organization Alias Query //////////////////////////////////////////////////////////

	$response["alias"] = array();
	$sql_3 = "select * from organization_alias where organization_id = $organization_id";

	$query_3 = mysqli_query($db, $sql_3);

	while($row_3 = mysqli_fetch_array($query_3, MYSQLI_ASSOC)){
			
			$org_alias = array();													
			$org_alias = $row_3["alias"];			
			array_push($response["alias"], $org_alias);		
		}

////////////////////////////////////// (4) Reference(Organization) Query //////////////////////////////////////////////////////////	


	$sql_4 = "select * from datatype_reference where entity_name = 'organization' and field_name = 'partOf'
	and entity_id = $organization_id";
	$query_4 = mysqli_query($db, $sql_4);

	while($row_4 = mysqli_fetch_array($query_4, MYSQLI_ASSOC)){
																		
			$response["partOf"]["reference"] = $row_4["reference"];
			$response["partOf"]["type"] = $row_4["type"];
			$response["partOf"]["identifier"] = $row_4["identifier"];	
			$response["partOf"]["display"] = $row_4["display"];					
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