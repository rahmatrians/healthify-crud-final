<?php

include 'config.php';

$id     = $_POST['id'];
$namaTips   = $_POST['nama_tips'];
$keterangan   = $_POST['keterangan'];


$conx->query("UPDATE tb_tips SET nama_tips='" . $namaTips . "', keterangan='" . $keterangan . "' WHERE id='" . $id . "'");
