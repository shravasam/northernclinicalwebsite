<?php 
	session_start();

	// variable declaration
	$username = "";
	$email    = "";
	$doctor = "";
	$doctorTwo = "";
	$message= "";
	$errors = array(); 
	$_SESSION['success'] = "";

	// connect to database
	$db = mysqli_connect('127.0.0.1', 'root', '12581258', 'RegisterDB');

	// REGISTER USER
	if (isset($_POST['reg_user'] )) {
		// receive all input values from the form
		$username = mysqli_real_escape_string($db, $_POST['username']);
		$email = mysqli_real_escape_string($db, $_POST['email']);	
		$doctor = mysqli_real_escape_string($db, $_POST['doctor']);
		$doctorTwo = mysqli_real_escape_string($db, $_POST['doctor2']);
		$message = mysqli_real_escape_string($db, $_POST['message']);
		//for admin reg login info		
		//$password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
		//$password_2 = mysqli_real_escape_string($db, $_POST['password_2']);

		// form validation: ensure that the form is correctly filled
		if (empty($username)) { array_push($errors, "Username is required"); }
		if (empty($email)) { array_push($errors, "Email is required"); }
		if (empty($doctor)) { array_push($errors, "doctor is required"); }
		if (empty($doctorTwo)) { array_push($errors, "doctorTwo is required"); }
		if (empty($message)) { array_push($errors, "message is required"); }
		//if ($password_1 != $password_2) {
		//	array_push($errors, "The two passwords do not match");
	//	}


		// register user if there are no errors in the form
	//	if (count($errors) == 0) {
	//		$password = md5($password_1);//encrypt the password before saving in the database
			$query = "INSERT INTO bookings(username, email, doctor,doctor2, message) 
					  VALUES('$username', '$email', '$doctor','$doctorTwo','$message')";
			mysqli_query($db, $query);
			
			$_SESSION['username'] = $username;
			$_SESSION['success'] = "Your appointment booked";
			header('location: patient_confirmBooking.html');
		}

if (isset($_POST['Admin_reg_user'])) {
		// receive all input values from the form
		$username = mysqli_real_escape_string($db, $_POST['username']);
		$email = mysqli_real_escape_string($db, $_POST['email']);	
		
		$password_1= mysqli_real_escape_string($db, $_POST['password_1']);
		$password_2= mysqli_real_escape_string($db, $_POST['password_2']);

		// form validation: ensure that the form is correctly filled
		if (empty($username)) { array_push($errors, "Username is required"); }
		if (empty($email)) { array_push($errors, "Email is required"); }
		if (empty($password_1)) { array_push($errors, "password is required"); }
		//if (empty($password_2)) { array_push($errors, "password is required"); }

		if ($password_1 != $password_2) {
			array_push($errors, "The two passwords do not match");
		}

		// register user if there are no errors in the form
		if (count($errors) == 0) {
			$password = md5($password_2);//encrypt the password before saving in the database
			$query2 = "INSERT INTO bookingInfo (username, email, password) 
					  VALUES('$username', '$email', '$password')";
			mysqli_query($db, $query2);

			$_SESSION['username'] = $username;
			$_SESSION['success'] = "Admin section";
			header('location: AdminRegWelcome.php');
		}


}

if (isset($_POST['Admin_user'])) {
		$username = mysqli_real_escape_string($db, $_POST['username']);
		$password = mysqli_real_escape_string($db, $_POST['password']);

		if (empty($username)) {
			array_push($errors, "Username is required");
		}
		if (empty($password)) {
			array_push($errors, "Password is required");
		}

		if (count($errors) == 0) {
			$password = md5($password);
			$query2 = "SELECT * FROM bookingInfo WHERE username='$username' AND password='$password'";
			$results = mysqli_query($db, $query2);
			$query3 = "SELECT * FROM bookings";
			$result3 = mysqli_query($db,$query3);	
			
		if (mysqli_num_rows($results) == 1) {
			$_SESSION['username'] = $username;
				$_SESSION['success'] = "You are now logged in";
				header('location: AdminLoginWelcome.php');
			}else {
				array_push($errors, "Wrong username/password combination");
			}
		}
	}

//if (isset($_POST['clients'])){

//	$query3 = "SELECT * FROM bookings";
//	$result3 = mysqli_query($db,$query3);

//	if (mysql_num_rows($result3) ==1){
//	header('location:index2.php');
	//echo $result3;
	
//}
//}
?>

