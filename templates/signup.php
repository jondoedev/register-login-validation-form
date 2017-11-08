<!DOCTYPE html>
<html>

<head>
  <title>Register</title>
  <!--<link href='style.css' rel='stylesheet' type='text/css'> -->
</head>

<body>

	<form method='post' class='reg-form'>

        <div class='form-row'>
            <label for='form_fname'>Email: </label>
            <input type='email' id='form_email' name='email'>
        </div>

        <div class='form-row'>
            <label for='form_login'>Login: </label>
            <input type='text' id='form_login' name='login'>
        </div>

        <div class='form-row'>
            <label for='form_name'>Real Name: </label>
            <input type='text' id='form_name' name='real_name'>
        </div>


        <div class='form-row'>
            <label for='form_password'>Password: </label>
            <input type='password' id='form_password' name='password'>
        </div>

        <div class='form-row'>
            <label for='form_bithdate'>Birth Date: </label>
            <input type='text' id='form_bithdate' name='birthdate'>
        </div>
        <!--#########################################################-->

        <div class='form-row'>
            <label for='form_country'>Country </label>
            <input type='text' id='form_country' name='Country'>
        </div>


        <div class="checkbox-group">
            <input type="checkbox" name="remember" id="remember">
            <label for="remember">Agree with terms and conditions</label>
        </div>


        <div class="form-row">
			<input type="submit" value='GO!'>
		</div>

	</form>






</body>

</html>