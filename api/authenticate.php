<?php
header("Content-Type: application/json; charset=UTF-8");
include 'db_connect.php';

if($con) {

if (!isset(getallheaders()['session'])) {
	http_response_code(403);
    echo "Authentication failed!";
    exit();
}
$session = getallheaders()['session'];
$result = $con->query("SELECT * FROM sessions where session_id='$session'");
if(mysqli_num_rows($result) <= 0){
    http_response_code(403);
    echo "Authentication failed!!";
    exit();
}
$outp = array();
$outp = $result->fetch_all(MYSQLI_ASSOC);
$account_id=$outp[0]["account_id"];

// echo $username;
// echo $type;
// echo $user_id;
}

?>