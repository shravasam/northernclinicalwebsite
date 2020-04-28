<?php 
	session_start(); 

	if (!isset($_SESSION['username'])) {
		$_SESSION['msg'] = "You must log in first";
		header('location: AdminLogin.php');
	}

	if (isset($_GET['logout'])) {
		session_destroy();
		unset($_SESSION['username']);
		header("location: AdminLogin.php");
	}
// connect to database
	$db = mysqli_connect('127.0.0.1', 'root', '12581258', 'RegisterDB');
	$query3 = "SELECT * FROM bookings";
	$result3 = mysqli_query($db,$query3);

?>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div class="header">
		<h2>Home Page</h2>
	</div>
	<div class="content">

		<!-- notification message -->
		<?php if (isset($_SESSION['success'])) : ?>
			<div class="error success" >
				<h3>
					<?php 
						echo $_SESSION['success']; 
						unset($_SESSION['success']);
					?>
				</h3>
			</div>
		<?php endif ?>

		<!-- logged in user information -->
		<?php  if (isset($_SESSION['username'])) : ?>
			<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
			
	<p> Welcome to admin user. Please click the below button to see all the booking </p>
		
			<p> <a href="dbBookings.php">Track patient appointments</a> </p>
			
			<p> <a href="first.html">Back to home page</a> </p>
			
		<?php endif ?>
	</div>
		
</body>
</html>
