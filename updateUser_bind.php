<?php
/**
 * Transaction in Bank using PHP/Mysql
 * 
 * @author  Thananjeyan
 * @version 1.0
 */

 $dbName = "mysql:host=localhost; dbname=transaction";
 $options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC];
 $conn = new PDO($dbName, 'root', '', $options);

 // $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 if (!$conn) {
    die ("Database connection Failed");
 }

 try {
    // Inputs 
    $fromUserId = 1;
    $toUserId = 2;
    $transferAmount = 99;
    $conn->beginTransaction();

    $city = 'Chennai';

    $sql1 = $conn->prepare("INSERT INTO users VALUES(NULL, ?, ?, ?, ?)");
    $sql1->bindParam('ssid', 'Suresh', $city , '44', '5000');
    $sql1->execute();

    $sql2 = $conn->prepare("UPDATE cityusers SET count = count + 1 WHERE city = :city");
    $sql2->bindParam(':city', $city);
    $sql2->execute();

    $conn->commit();

    echo "User Insertion has been done with Bind param";

 } catch (Exception $e) {
    
    echo $e->getMessage();
    $conn->rollback();
 }

