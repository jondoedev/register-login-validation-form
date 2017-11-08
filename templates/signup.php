<?php require_once __DIR__ . '/_header.php'; ?>

<form method='post' class='reg-form'>
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div class='form-group'>
                <label>Email: </label>
                <input type='email' class="form-control" name='email' />
            </div>

            <div class='form-group'>
                <label>Login: </label>
                <input type='text' class="form-control" name='login' />
            </div>

            <div class='form-group'>
                <label>Real Name: </label>
                <input type='text' class="form-control" name='name' />
            </div>

            <div class='form-group'>
                <label>Password: </label>
                <input type='password' class="form-control" name='password' />
            </div>

            <div class='form-group'>
                <label>Birth Date: </label>
                <input type='text' class="form-control" name='birthdate' />
            </div>

            <div class='form-group'>
                <label>Country </label>
                <!-- TODO: select -->
                <select name="country_id" class="form-control">
                    <?php foreach ($countries as $country) { ?>
                        <option value="<?= $country->id ?>">
                            <?= $country->name ?>O
                        </option>
                    <?php } ?>
                </select>
            </div>

            <div class="form-group">
                <label>
                    <input type="checkbox" name="agree" />
                    Agree with terms and conditions
                </label>
            </div>

            <div class="form-group">
                <input type="submit" class="btn btn-primary" value='Sign up' />
            </div>

        </div>
    </div>
</form>

<?php require_once __DIR__ . '/_footer.php'; ?>
