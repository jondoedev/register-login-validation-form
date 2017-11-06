<?php

$url = $_SERVER['REQUEST_URI'];

$routes = [
    '/' => function () {
        echo 'home';
    },
    '/sign-up' => function () {
        echo 'sign up';
    },
    '/sign-in' => function () {
        echo 'sign in';
    },
];

foreach ($routes as $pattern => $handler) {
    if ($url == $pattern) {
        $handler();
    }
}