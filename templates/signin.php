<?php require_once __DIR__.'/_header.php'; ?>

    <div class="form-wrapper">
        <div class="logo">
            <a href="">
                <img src="/img/logo.png" alt="">
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

<?php require_once __DIR__.'/_footer.php'; ?>