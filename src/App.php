<?php
namespace App;

use App\Models\Country;
use Illuminate\Database\Capsule\Manager as Capsule;

class App {
    public static function init() {
        // init Eloquent ORM
        $capsule = new Capsule;
        // TODO: dont hardcode credentials
        $capsule->addConnection([
            'driver'    => 'mysql',
            'host'      => 'localhost',
            'database'  => 'db_codeit_test',
            'username'  => 'root',
            'password'  => '3452',
            'charset'   => 'utf8',
            'collation' => 'utf8_general_ci',
            'prefix'    => ''
        ]);
        $capsule->setAsGlobal();
        $capsule->bootEloquent();
        date_default_timezone_set('UTC');
    }

    public static function run($request) {
        $routes = [
            '/' => function () {
                return App::render('main');

            },
            '/sign-up' => function () {
                return App::render('signup', ['countries' => Country::all()]);
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
