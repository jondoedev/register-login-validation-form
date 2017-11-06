<?php

require '../src/app.php';

$request = [
    'url' => $_SERVER['REQUEST_URI'],
    'params' => $_SERVER
];

$response = app_run($request);

http_response_code($response['code']);
foreach ($response['headers'] as $key => $value) {
    header("$key: $value");
}
echo $response['body'];
