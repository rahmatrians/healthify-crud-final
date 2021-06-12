<?php

include 'config.php';

$namaMakanan   = $_POST['nama_makanan'];
$keterangan   = $_POST['keterangan'];

$conx->query("INSERT INTO tb_makanan (nama_makanan, keterangan) VALUES('" . $namaMakanan . "','" . $keterangan . "')");
