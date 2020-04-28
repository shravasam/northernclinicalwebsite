<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
	<title>Registration system PHP and MySQL</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="header">

		<h2>Registration for patients</h2>
	</div>
	
	<form method="post" form name ="action="patientRegister.php">

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
			<label>Choose the single/multiple doctor's </label>
		<br>
			<!-- <input type="checkbox"name="doctor" value="<?php echo$doctor=DR.CHRISTINAARAMOUNY;?>"> -->
		
	<select name="doctor" size="1" multiple>
   		<option value="<?php echo$doctor=DR.CHRISTINAARAMOUNY;?>">"DR.CHRISTINAARAMOUNY"</option>
		
   	</select>
		
	<select name="doctor2" size="1" multiple>
    		<option value="<?php echo$doctorTwo=DRGEORGE;?>">"DR.GEORGE"</option>
		
    	</select>	
		</div>
		<div class="input-group">
			<label>Message</label>
			<input type="text" name="message" value="<?php echo $message; ?>">
		</div>
		
		<div class="input-group">
			<button type="submit" class="btn" name="reg_user">Register</button>
		</div>
		<p>
			homepage ? <a href="first.html">click</a>
		</p>
	</form>
</body>
</html>
