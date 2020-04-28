<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
	<title>Registration system PHP and MySQL</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="header">
<H1> ADMIN SECTION</H1>
		<h2>ADMIN SIGN UP</h2>
	</div>
	
	<form method="post" action="AdminReg.php">

		<?php include('errors.php'); ?>

		<div class="input-group">
			<label>Username</label>
			<input type="text" name="username" value="<?php echo $username; ?>">
		</div>
		<div class="input-group">
			<label>Email</label>
			<input type="email" name="email" value="<?php echo $email; ?>">
		</div>
		<div class="input-group">
			<label>password</label>
			<input type="password" name="password_1">
		</div>
		<div class="input-group">
			<label>Re-type password</label>
			<input type="password" name="password_2">
		</div>
			

		
		<div class="input-group">
			<button type="submit" class="btn" name="Admin_reg_user">Register</button>
		</div>
		<p>
			Already signed up? <a href="AdminLogin.php">Sign in</a>
		</p>
		<p>
			homepage ? <a href="first.html">click</a>
		</p>
	</form>
</body>
</html>
