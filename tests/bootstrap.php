<?php 

require 'vendor/autoload.php';

$loader = new \Mockery\Loader;
$loader->register();

require_once '../config/autoload.php';

require_once 'src/PrestaShop/Test/Utils/MockUtils.php';

