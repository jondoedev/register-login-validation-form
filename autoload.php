<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);

function autoload($className) {
    require_once __DIR__."/src/$className.php";
}

spl_autoload_register('autoload');
