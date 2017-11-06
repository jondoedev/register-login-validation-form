<?php

function app_run($request) {
    $routes = [
        '/' => function () {
            return 'home';
        },
        '/sign-up' => function () {
            return 'sign up';
        },
        '/sign-in' => function () {
            return 'sign in';
        },
    ];

    foreach ($routes as $pattern => $handler) {
        if ($request['url'] == $pattern) {
            $response = $handler();
            if (is_string($response)) {
                $response = [
                    'code' => 200,
                    'headers' => [],
                    'body' => $response
                ];
            }
            return $response;
        }
    }

    return [
        'code' => 404,
        'headers' => ['ololo' => 'trololo'],
        'body' => ''
    ];

}
