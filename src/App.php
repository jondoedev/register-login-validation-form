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
        session_start();
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
                        $user = User::create($clean_params);
                        $_SESSION['user'] = $user;
                        return App::redirect('/');
                    }
                }
                return App::render('signup', [
                    'countries' => Country::all(),
                    'errors' => $errors,
                    'params'  => $request['params'],
                ]);
            },
            '/sign-in' => function ($request) {
                $error = false;
                if ($request['info']['REQUEST_METHOD'] == 'POST') {
                    if (isset($request['params']['login']) && isset($request['params']['password']))  {
                        $login = $request['params']['login'];
                        $password = $request['params']['password'];

                        $user = User::where('login', $login)->where('password', $password)->first();
                        if (!$user) {
                            $user = User::where('email', $login)->where('password', $password)->first();
                        }

                        if ($user) {
                            $_SESSION['user'] = $user;
                            return App::redirect('/');
                        } else {
                            $error = true;
                        }
                    } else {
                        $error = True;
                    }
                }
                return App::render('signin', ['error' => $error]);

            },
            '/sign-out' => function ($request) {
                unset($_SESSION['user']);
                return App::redirect('/');

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
            'headers' => [],
            'body' => 'PAGE NOT FOUND' //TODO: App::render('404');
        ];

    }


    public static function render($path, $params = [])
    {
        ob_start();
        $params['current_user'] = isset($_SESSION['user']) ? $_SESSION['user'] : null;

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

    public static function redirect($url){
        return [
            'code' => 302,
            'headers' => ['Location' => $url],
        ];

    }
}
