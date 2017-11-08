<?php

require_once __DIR__.'/../autoload.php';

$request = [
    'url' => $_SERVER['REQUEST_URI'],
    'params' => $_SERVER
];
$response = App\App::run($request);
http_response_code($response['code']);
foreach ($response['headers'] as $key => $value) {
    header("$key: $value");
}
echo $response['body'];
