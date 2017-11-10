<?php require_once __DIR__ . '/_header.php'; ?>

<form method='post' class='reg-form'>
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div class='form-group <?= isset($errors['email']) ? 'has-error' : ''; ?>'>
                <label>Email: </label>
                <input type='email' class="form-control" name='email'
                       value="<?= isset($params['email']) ? $params['email'] : '' ?>"/>
                <?php if (isset($errors['email'])) { ?>
                    <span class="help-block"><?= $errors['email']; ?></span>
                <?php } ?>
            </div>

            <div class='form-group <?= isset($errors['login']) ? 'has-error' : '' ?>'>
                <label>Login: </label>
                <input type='text' class="form-control" name='login'
                       value="<?= isset($params['login']) ? $params['login'] : '' ?>"/>
                <?php if (isset($errors['login'])) { ?>
                    <span class="help-block"><?= $errors['login'] ?></span>
                <?php } ?>
            </div>

            <div class='form-group <?= isset($errors['name']) ? 'has-error' : '' ?>'>
                <label>Real Name: </label>
                <input type='text' class="form-control" name='name'
                       value="<?= isset($params['name']) ? $params['name'] : '' ?>"/>
                <?php if (isset($errors['name'])) { ?>
                    <span class="help-block"><?= $errors['name'] ?></span>
                <?php } ?>
            </div>

            <div class='form-group <?= isset($errors['password']) ? 'has-error' : '' ?>'>
                <label>Password: </label>
                <input type='password' class="form-control" name='password'/>
                <?php if (isset($errors['password'])) { ?>
                    <span class="help-block"><?= $errors['password'] ?></span>
                <?php } ?>
            </div>

            <div class='form-group <?= isset($errors['password2']) ? 'has-error' : '' ?>'>
                <label>Confirm password: </label>
                <input type='password' class="form-control" name='password2'/>
                <?php if (isset($errors['password2'])) { ?>
                    <span class="help-block"><?= $errors['password2'] ?></span>
                <?php } ?>
            </div>

            <div class='form-group <?= isset($errors['birthdate']) ? 'has-error' : '' ?>'>
                <label>Birth Date: </label>
                <input type='date' class="form-control" name='birthdate'
                        value="<?= isset($params['birthdate']) ? $params['birthdate'] : '' ?>"/>
                <?php if (isset($errors['birthdate'])) { ?>
                    <span class="help-block"><?= $errors['birthdate'] ?></span>
                <?php } ?>
            </div>

            <div class='form-group <?= isset($errors['country_id']) ? 'has-error' : '' ?>'>
                <label>Country </label>
                <select name='country_id' class="form-control">
                    <?php foreach ($countries as $country) { ?>
                        <option value="<?= $country->id ?>">
                            <?= $country->name ?>
                        </option>
                    <?php } ?>
                </select>
                <?php if (isset($errors['country_id'])) { ?>
                    <span class="help-block"><?= $errors['country_id'] ?></span>
                <?php } ?>
            </div>

            <div class='form-group <?= isset($errors['agree']) ? 'has-error' : '' ?>'>
                <label>
                    <input type="checkbox" name='agree' <?= isset($params['agree']) ? 'checked' : '' ?>/>
                    Agree with terms and conditions
                </label>
                <?php if (isset($errors['agree'])) { ?>
                    <span class="help-block"><?= $errors['agree'] ?></span>
                <?php } ?>
            </div>

            <div class="form-group col-md-offset-5">
                <input type="submit" class="btn btn-primary" value='Sign up'/>
            </div>

        </div>
    </div>
</form>

<?php require_once __DIR__ . '/_footer.php'; ?>
