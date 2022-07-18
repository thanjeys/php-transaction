<?php
/**
 * Transaction in Bank using PHP/Mysql
 * 
 * @author  Thananjeyan
 * @version 1.0
 */

 $dbName = "mysql:host=localhost; dbname=transaction";
 $conn = new PDO($dbName, 'root', '');
 $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

 if (!$conn) {
    die ("Database connection Failed");
 }

 try {
    // Inputs 
    $fromUserId = 1;
    $toUserId = 2;
    $transferAmount = 99;
    $conn->beginTransaction();

    $sql1 = $conn->prepare("UPDATE users SET amount=amount - ? WHERE id = ?");
    $sql1->execute([$transferAmount, $fromUserId]);

    $sql2 = $conn->prepare("UPDATE users SET amounts=amount + ? WHERE id = ?");
    $sql2->execute([$transferAmount, $toUserId]);

    $conn->commit();

    echo "Amount $transferAmount trasferred to $toUserId Successfully";

 } catch (Exception $e) {
    
    echo $e->getMessage();
    $conn->rollback();
 }

