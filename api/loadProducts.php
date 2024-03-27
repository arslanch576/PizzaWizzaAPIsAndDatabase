<?php
header("Content-Type: application/json; charset=UTF-8");
include 'db_connect.php';

$result = $con->query("SELECT * FROM products");
echo json_encode($result->fetch_all(MYSQLI_ASSOC));

?>