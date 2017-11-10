<?php require_once __DIR__ . '/_header.php'; ?>

    <div class="col-md-offset-5 margin_15">
        <div class="logo">
            <a href="">
                <img src="/img/logo.png" alt="">
            </a>
        </div>
        <?php if ($current_user): ?>
            <h3>Hello, <?= $current_user->name; ?></h3>
            <a href="<?= App\App::url('/sign-out') ?>">
                    <button type="submit" class="btn btn-primary col-md-offset-1">Sign Out</button>
                </a>
        <?php else: ?>
            <h3>Hello, Guest</h3>
            <a class="btn btn-primary" href="<?= App\App::url('/sign-in') ?>">Sign In</a>
            <a class="btn btn-primary" href="<?= App\App::url('/sign-up') ?>">Register</a>
        <?php endif; ?>
    </div>

<?php require_once __DIR__ . '/_footer.php'; ?>