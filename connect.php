<?php
// Database configuration
$servername = "localhost";
$username = "root";
$password = "Kurzalefski1948_";
$dbname = "users";

// Create a connection
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully"; 
}
catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

// Perform SQL queries or operations here...

// Close the connection (optional for PDO; it closes automatically when the script ends)
$conn = null;
?>