<?php

require "Install.php";

$i = new Install;
try {
    $i->completeInstall();
} catch (\Exception $e) {
    exit($e->getMessage());
}
?>

Successfully completed your installation !