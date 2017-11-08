<?php
namespace App;

class App {
    public static function run($request) {
        $routes = [
            '/' => function () {
                return App::render('main');

            },
            '/sign-up' => function () {
                return App::render('signup');
            },
            '/sign-in' => function () {
                return App::render('signin');
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


    public static function render($path, $params=[]){
        ob_start();
        extract($params);
        require_once __DIR__."/../templates/$path.php";
        $output = ob_get_clean();
        return $output;
    }
}
