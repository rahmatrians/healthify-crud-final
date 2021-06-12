<?php

include 'config.php';

$get = $conx->query("SELECT * FROM tb_tips");

$data = [];

while ($x = $get->fetch_assoc()) {
    $data[] = $x;
}

$json = json_encode($data);

echo ($json);
// var_dump($json);
