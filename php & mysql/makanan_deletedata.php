<?php

include 'config.php';

$id     = $_POST['id'];

$conx->query("DELETE FROM tb_makanan WHERE id='" . $id . "'");
