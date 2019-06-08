<?php
try {
    $pdoConnect = new Pdo("mysql:host=localhost;dbname=flutter_resto", 'root', '');
} catch(Exception $e) {
    die('Unable to connect to database');
}