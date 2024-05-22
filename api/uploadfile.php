<?php
header('Content-Type: text/plain');
include 'authenticate.php';

$originalImgName= $_FILES['filename']['name'];
$tempName= $_FILES['filename']['tmp_name'];
$folder="../images/";

if(move_uploaded_file($tempName,$folder.$originalImgName)){
    echo $originalImgName;                     
}else{
    http_response_code(500);
	echo "Failed!";
}
  
?>