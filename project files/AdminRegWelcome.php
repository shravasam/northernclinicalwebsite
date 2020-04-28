<?php 
	session_start(); 

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
	<!-- logged in user information -->
		<?php  if (isset($_SESSION['username'])) : ?>
			<p>Welcome <strong><?php echo $_SESSION['username']; ?></strong></p>
			
	<p> Welcome to admin user. Please click the below button to see all the bookings </p>
			<p> <a href="dbBookings.php">Track patient appointments</a> </p>
			<p> <a href="first.html">Back to home page</a> </p>
			
		<?php endif ?>
	</div>
		
</body>
</html>
