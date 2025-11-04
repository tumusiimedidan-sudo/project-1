<?php
$host = "localhost";
$user = "root";   // XAMPP default user
$pass = "";       // XAMPP default has no password
$db   = "school_system";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
