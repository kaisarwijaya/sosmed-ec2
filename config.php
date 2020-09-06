<?php

$db_host = "localhost"; #change the data
$db_user = "devops";#change the data
$db_pass = "Admin123";#change the data
$db_name = "dbsosmed";#change the data

try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}
