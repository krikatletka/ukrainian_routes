<?php
/**
 * Database.php
 * Database configuration for the Ukrainian routes application
 */

/** 
 * Base URL for the API
 * @var string
 */
$host = 'localhost';

/**
 *  Database name
 * @var string
 */
$databasename = 'ukrainian_routes';

/** 
 * Username for the database connection
 * @var string
 */
$username = 'root';

/** 
 * Password for the database connection
 * @var string
 */
$password = '';

//$db = new mysqli('localhost', $username, $password, $databasename);
//$db->set_charset("utf8mb4");

/**
 * Establish a connection to the database using PDO
 * @var PDO
*/

try
{
    // Create a new PDO instance for database connection
    $connection = new PDO("mysql:host=$host;dbname=$databasename;charset=utf8mb4", $username, $password );

    // Set PDO attributes for error handling and fetch mode
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Set the default fetch mode to associative array
    $connection->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
}
catch (PDOException $exception)
{
    // Handle connection errors by displaying an error message and terminating the script
    die("Connection failed: " . $exception->getMessage());
}

