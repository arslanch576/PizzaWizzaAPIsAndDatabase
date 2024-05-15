<?php
header("Content-Type: application/json; charset=UTF-8");
include 'authenticate.php';

$name = $_POST['name'];
$details = $_POST['details'];
$id = $_POST['id'];
$price = $_POST['price'];
$discountedPrice = $_POST['discountedPrice'];
$subCategory = $_POST['subCategory'];
$shortDescription = $_POST['shortDescription'];
$category = $_POST['category'];
$picture = $_POST['picture'];

if ($id==-1) {
	$result = $con->query("INSERT INTO `products`( `name`, `details`, `category`, `subCategory`, `price`, `discountedPrice`, `picture`, `shortDescription`) VALUES ('$name','$details','$category','$subCategory','$price','$discountedPrice','$picture','$shortDescription')");
	$id = mysqli_insert_id($con);
	$result = $con->query("SELECT * FROM products where id = $id");
	$outp = array();
	$outp = $result->fetch_all(MYSQLI_ASSOC);
	echo json_encode($outp[0]);
}else{
	$result = $con->query("UPDATE `products` SET `name`='$name',`details`='$details',`category`='$category',`subCategory`='$subCategory',`price`='$price',`discountedPrice`='$discountedPrice',`picture`='$picture',`createdAt`='now()',`updatedAt`='now()',`shortDescription`='$shortDescription' where `id`=$id");
	$result = $con->query("SELECT * FROM products where id = $id");
	$outp = array();
	$outp = $result->fetch_all(MYSQLI_ASSOC);
	echo json_encode($outp[0]);
}



?>