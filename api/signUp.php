<?php
header("Content-Type: application/json; charset=UTF-8");
include 'db_connect.php';

$a = $_POST['email'];
$n = $_POST['name'];
$p = $_POST['phone'];
$b = password_hash(getallheaders()['Password'], PASSWORD_DEFAULT);

$result = $con->query("SELECT * FROM users where phone='$p'");
if(mysqli_num_rows($result) > 0){
    http_response_code(403);
	echo "This phone number is already registered";
	return;
}
$result = $con->query("INSERT INTO `users`(`username`, `email`,`phone`, `password`,`createdAt`) VALUES ('$n','$a','$p','$b',now())");
$id = mysqli_insert_id($con);
$result = $con->query("SELECT * FROM users where id = $id");
$outp = array();
$outp = $result->fetch_all(MYSQLI_ASSOC);

$bytes = bin2hex(random_bytes(15));
$result = $con->query("INSERT INTO `sessions`(`session_id`, `account_id`, `login_time`) VALUES ('$bytes','$id',now())");
header("session: $bytes");

$outp[0]["password"]=null;
echo json_encode($outp[0]);

?>