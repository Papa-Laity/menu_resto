<?php
    include 'connect.php';

    $username= $_POST['username'];
    $password = $_POST['password'];

    $res = $pdoConnect->query("SELECT * FROM userlogin where username='".$username."' and password='".$password."';");

    $result= array();

    while($fetchData=$res->fetch_assoc()){

        $result[]=$fetchData;
    }

    echo json_encode($result);
?>