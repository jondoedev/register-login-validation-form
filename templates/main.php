<?php require_once __DIR__ . '/_header.php'; ?>

    <?php /*if ($current_user): */ ?>
    <!--<li><a href="/sign-out">Sign Out</a></li>-->
    <!-- TODO: name of current user -->
    <?php /*else:*/ ?>
    <h3>Hello guest!</h3>
    <a class="btn btn-primary" href="/sign-in">Sign In</a>
    <a class="btn btn-primary" href="/sign-up">Register</a>
    <?php /*endif;*/ ?>

<?php require_once __DIR__ . '/_footer.php'; ?>