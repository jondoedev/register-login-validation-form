<?php require_once __DIR__ . '/_header.php'; ?>
    <div class="col-md-offset-5 margin_15">
        <div class="form-wrapper">
            <div class="logo">
                <a href="">
                    <img src="/img/logo.png" alt="">
                </a>
            </div>

            <?php if ($error){ ?>
                <div class="alert alert-danger sign-in-error">Invalid login or password</div>
            <?php } ?>

            <div class="form-group" style="max-width: 27%;margin-top: 2%;">
                <form method="post">
                    <div class="form-group">
                        <input type="text" name="login" id="login" class="form-control" placeholder="Login or email">
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="password" class="form-control"
                               placeholder="Password">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary sign-in-btn">Sign In</button>
                    </div>

                    <p class="message">
                        Don't have an account?</br> <a href="<?= App\App::url('sign-up') ?>"">Sign Up</a>
                    </p>
                </form>
            </div>
        </div>
    </div>
<?php require_once __DIR__ . '/_footer.php'; ?>