<?php
header("Content-Type: application/json; charset=UTF-8");
include 'db_connect.php';


$a = $_POST['phone'];
$b = getallheaders()['Password'];

$result = $con->query("SELECT * FROM users where email='$a' or phone='$a'");
if(mysqli_num_rows($result) <= 0){
    http_response_code(403);
	echo "This email or phone does not exist";
	return;
}

while($row = mysqli_fetch_assoc($result))
{
	  if(password_verify($b, $row["password"])) {
	 	$bytes = bin2hex(random_bytes(15));
		$result = $con->query("INSERT INTO `sessions`(`session_id`, `account_id`, `login_time`) VALUES ('$bytes','".$row["id"]."',now())");
		header("session: $bytes");
		$row["password"]=null;
		echo json_encode($row);
		return;
	}
}

http_response_code(403);
echo "Incorrect password";
?>