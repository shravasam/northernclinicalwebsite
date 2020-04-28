<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
	<title>Registration system PHP and MySQL</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div class="header">
		<h2>AdminLogin</h2>
	</div>
	
	<form method="post" action="AdminLogin.php">

		<?php include('errors.php'); ?>

		<div class="input-group">
			<label>Username</label>
			<input type="text" name="username" >
		</div>
		<div class="input-group">
			<label>Password</label>
			<input type="password" name="password">
		</div>
		<div class="input-group">
			<button type="submit" class="btn" name="Admin_user">Login</button>
		</div>
		<p>
			Not yet a member? <a href="AdminReg.php">Sign up</a>
		</p>
		<p>
			Homepage ? <a href="first.html">click</a>
		</p>
	</form>


</body>
</html>
