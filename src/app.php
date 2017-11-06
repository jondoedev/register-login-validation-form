<?php

function app_run($request) {
    $routes = [
        '/' => function () {
            return [
                'code' => 200,
                'headers' => [],
                'body' => 'home']
                ;
        },
        '/sign-up' => function () {
            return [
                'code' => 200,
                'headers' => [],
                'body' => 'sign up'
            ];
        },
        '/sign-in' => function () {
            return [
                'code' => 200,
                'headers' => [],
                'body' => 'sign in'
            ];
        },
    ];

    foreach ($routes as $pattern => $handler) {
        if ($request['url'] == $pattern) {
            return $handler();
        }
    }

    return [
        'code' => 404,
        'headers' => ['ololo' => 'trololo'],
        'body' => ''
    ];

}
