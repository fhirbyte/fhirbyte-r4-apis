<?php

# Local Server

$host_type = 'localhost';
$host_username = 'root';
$host_password = '';
$host_db = 'fhirbyte';

$db = new mysqli($host_type,$host_username,$host_password,$host_db);
date_default_timezone_set('America/New_York');

if($db->connect_errno)
{
	die('Sorry, We are having problems in connecting to the database');
}

?>