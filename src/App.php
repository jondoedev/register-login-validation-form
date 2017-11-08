<?php
namespace App;

use App\Models\Country;
use App\Models\User;
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
            '/' => function ($request) {
                return App::render('main');

            },
            '/sign-up' => function ($request) {
                // $errors = [];
                if ($request['info']['REQUEST_METHOD'] == 'POST') {
                    /*
                     * $rules = [
                     *    'name' => ['required']
                     *    'email' => ['required', 'email']
                     * ];
                     *
                     * $errors = App::validate($request['params'], $rules);
                     *
                     * For example
                     *
                     * $errors = [
                     *    'name' => 'field is required'
                     *    'email' => 'is not email'
                     * ];
                     *
                     * if (!$errors) {
                     *     User::create($request['params']);
                     * }
                     *
                     *
                     *
                     * */
                    var_dump($request['params']);
                }
                return App::render('signup', [
                    'countries' => Country::all(),
                    /* 'errors' => $errors */
                ]);
            },
            '/sign-in' => function ($request) {
                return App::render('signin');
            },
        ];

        foreach ($routes as $pattern => $handler) {
            if ($request['url'] == $pattern) {
                $response = $handler($request);
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
