<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>

    <!-- Google fonts -->
    <!-- <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600" rel="stylesheet"> -->

    <!-- Fontawesome -->
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <!-- Style -->
    <link rel="stylesheet" href="/css/style.css">

</head>
<body>
<div class="form-wrapper">
    <div class="logo">
        <a href="">
            <img src="../public/img/logo.png" alt="">
        </a>
    </div>
    <div class="user-auth-form">
        <form>
            <div class="input-group icon-on-input">
                <label for="userName"><i class="fa fa-user"></i></label>
                <input type="text" name="userName" id="userName" class="form-control" placeholder="Username">
            </div>
            <div class="input-group icon-on-input">
                <label for="userPassword"><i class="fa fa-lock"></i></label>
                <input type="password" name="userPassword" id="userPassword" class="form-control"
                       placeholder="Password">
            </div>
            <div class="checkbox-group">
                <input type="checkbox" name="remember" id="remember" checked>
                <label for="remember">Remember Me</label>
            </div>

            <button type="submit" class="btn btn-default half-width"><a href="/sign-in">Sign In</a></button>
            <button type="submit" class="btn btn-default half-width"><a href="/sign-up">Sign Up</a></button>

        </form>
    </div>
</div>
</body>

</html>