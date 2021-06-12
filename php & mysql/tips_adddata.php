<?php

include 'config.php';

$namaTips   = $_POST['nama_tips'];
$keterangan   = $_POST['keterangan'];

$conx->query("INSERT INTO tb_tips (nama_tips, keterangan) VALUES('" . $namaTips . "','" . $keterangan . "')");
