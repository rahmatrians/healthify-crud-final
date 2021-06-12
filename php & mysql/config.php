<?php

$username   = 'root';
$password   = '';
$host       = 'localhost';
$database   = 'healthify';

$conx       = new mysqli($host, $username, $password, $database);

if (!$conx) {
    echo "failed connect to database!!";
}
