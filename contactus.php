<?php
	
$Name = $_POST['name'];
$Email = $_POST['email'];
$Phone = $_POST['Phone'];
$Message = $_POST['message'];

$conn = new mysqli('localhost','root','','shop');
if($conn->connect_error)
{
	die('connection failed :' .$conn->conect_error);
}
else
{
	$stmt = $conn->prepare("insert into contact
	(Name, Email, Phone, Message) values (?,?,?,?)");
	$stmt->bind_param("ssis",$Name, $Email, $Phone, $Message);
	$stmt->execute();
	echo "we recived your message sucessfully someone will be in touch 
	with you as soon as possible.";
	$stmt->close();
	$conn->close();
}
?>