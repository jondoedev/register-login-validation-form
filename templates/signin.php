<?php require_once __DIR__ . '/_header.php'; ?>

    <div class="col-md-offset-5">
        <div class="form-wrapper">
            <div class="logo">
                <a href="">
                    <img src="/img/logo.png" alt="">
                </a>
            </div>

            <?php if ($error){ ?>
                <div class="alert alert-danger">Invalid login or password</div>
            <?php } ?>

            <div class="user-auth-form">
                <form method="post">
                    <div class="input-group icon-on-input">
                        <label for="userName"><i class="fa fa-user"></i></label>
                        <input type="text" name="login" id="login" class="form-control" placeholder="Login or email">
                    </div>
                    <div class="input-group icon-on-input">
                        <label for="userPassword"><i class="fa fa-lock"></i></label>
                        <input type="password" name="password" id="password" class="form-control"
                               placeholder="Password">
                    </div>
                    <div class="checkbox-group">
                        <input type="checkbox" name="remember" id="remember" checked>
                        <label for="remember">Remember Me</label>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-default half-width">Sign In</button>
                    </div>

                    <p>
                        Don't have an account? <a href="/sign-up">Sign Up</a>
                    </p>

                </form>
            </div>
        </div>
    </div>
<?php require_once __DIR__ . '/_footer.php'; ?>