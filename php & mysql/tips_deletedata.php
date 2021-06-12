<?php

include 'config.php';

$id     = $_POST['id'];

$conx->query("DELETE FROM tb_tips WHERE id='" . $id . "'");
