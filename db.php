<?php
$host = "localhost";
$user = "root"; // ถ้ามี password ให้ใส่
$password = "";
$dbname = "store_db";

$conn = new mysqli($host, $user, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
