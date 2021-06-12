<?php

include 'config.php';

$id     = $_POST['id'];
$namaMakanan   = $_POST['nama_makanan'];
$keterangan   = $_POST['keterangan'];


$conx->query("UPDATE tb_makanan SET nama_makanan='" . $namaMakanan . "', keterangan='" . $keterangan . "' WHERE id='" . $id . "'");
