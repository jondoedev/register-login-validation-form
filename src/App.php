<?php

namespace App;

use App\Models\Country;
use App\Models\User;
use Illuminate\Database\Capsule\Manager as Capsule;
use Rakit\Validation\Validator;

class App
{
    public static function init()
    {
        // init Eloquent ORM
        $capsule = new Capsule;
        // TODO: dont hardcode credentials
        $capsule->addConnection([
            'driver' => 'mysql',
            'host' => 'localhost',
            'database' => 'db_codeit_test',
            'username' => 'root',
            'password' => '3452',
            'charset' => 'utf8',
            'collation' => 'utf8_general_ci',
            'prefix' => ''
        ]);
        $capsule->setAsGlobal();
        $capsule->bootEloquent();
        date_default_timezone_set('UTC');
    }

    public static function run($request)
    {
        $routes = [
            '/' => function ($request) {
                return App::render('main');

            },
            '/sign-up' => function ($request) {
                $errors = [];
                $rules = [
                    'email' => 'required|email',
                    'login' => 'required|min:6',
                    'password' => 'required|min:6',
                    'password2' => 'required|same:password',
                    'agree' => 'required',
                ];
                // TODO: validate country_id

                if ($request['info']['REQUEST_METHOD'] == 'POST') {
                    list($clean_params, $errors) = App::validate($request['params'], $rules, ['password2', 'agree']);

                    if (!$errors) {
                        User::create($clean_params);
                        return 'User Created';
                        // TODO redirect to home page
                    }
                }
                return App::render('signup', [
                    'countries' => Country::all(),
                    'errors' => $errors,
                    'params'  => $request['params'],
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


    public static function render($path, $params = [])
    {
        ob_start();
        extract($params);
        require_once __DIR__ . "/../templates/$path.php";
        $output = ob_get_clean();
        return $output;
    }

    public static function validate($params, $rules, $exclude_params)
    {
        $clean_params = [];
        foreach ($params as $key => $value) {
            if (!in_array($key, $exclude_params)){
                $clean_params[$key] = $value;
            }
        }

        $validator = new Validator;
        $validation = $validator->make($params, $rules);
        $validation->validate();

        if ($validation->fails()) {
            $errors = $validation->errors()->toArray();
            $flat_errors = [];
            foreach ($errors as $key => $value) {
                $flat_errors[$key] = array_values($value)[0];
            }
            return [$clean_params, $flat_errors];
        } else {
            return [$clean_params, []];
        }
    }
}
