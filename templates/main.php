<?php require_once __DIR__ . '/_header.php'; ?>

    <div class="col-md-offset-5">
        <?php if ($current_user): ?>
            <h3>Hello, <?= $current_user->name; ?></h3>
            <li><a href="<?= App\App::url('/sign-out') ?>">Sign Out</a></li>
        <?php else: ?>
            <h3>Hello, Guest</h3>
            <a class="btn btn-primary" href="<?= App\App::url('/sign-in') ?>">Sign In</a>
            <a class="btn btn-primary" href="<?= App\App::url('/sign-up') ?>">Register</a>
        <?php endif; ?>
    </div>

<?php require_once __DIR__ . '/_footer.php'; ?>