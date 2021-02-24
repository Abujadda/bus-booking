<?php 

	
	session_start();
	ob_start();

	if(! isset($_SESSION['email'])){
		header("location:login.php");
	}

	require 'config/conn.php';


	if(isset($_POST['profile'])){


		$fname = mysqli_real_escape_string($isah, $_POST['fname']);
		$lname = mysqli_real_escape_string($isah, $_POST['lname']);
		$next_of_kin = mysqli_real_escape_string($isah, $_POST['next_of_kin']);
		$email = mysqli_real_escape_string($isah, $_POST['email']);
		$phone = mysqli_real_escape_string($isah, $_POST['phone']);
		$kin_phone = mysqli_real_escape_string($isah, $_POST['kin_phone']);
		$gender = mysqli_real_escape_string($isah, $_POST['gender']);
		$m_status = mysqli_real_escape_string($isah, $_POST['m_status']);
		$city = mysqli_real_escape_string($isah, $_POST['city']);
		$address = mysqli_real_escape_string($isah, $_POST['address']);


		$profile = mysqli_query($isah, "INSERT INTO user_profile (fname, lname, kin_name, email, phone, kin_phone, gender, m_status, address, city, status) VALUES ('$fname', '$lname', '$next_of_kin', '".$_SESSION['email']."', '$phone', '$kin_phone', '$gender', '$m_status', '$address', '$city', '1')");
		if($profile){
			header("location: payment.php");
		}else{
			echo "Wrong";
		}

	}


?>




<!DOCTYPE html>
<html>
<head>
	<title>Register Account</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>

	<?php require 'config/header.php'; ?>

	<div class="container" style="margin-top: 110px">
		<div class="row">

			<?php require 'config/sidebar.php'; ?>

			<div class="col-md-9">
				<div class="panel panel-default">
				  <div class="panel-body" style="padding: 40px">

				  	<form method="POST" action="">
				  		<div class="form-group">
				  			<h4 class="text-left"><b>Update Profile</b></h4> <hr>
				  		</div>

				  		<div class="row">
				  			<div class="col-md-4">
				  				<div class="form-group">
						  			<label>First Name:</label>
						  			<input type="text" name="fname" id="fname" class="form-control" placeholder="First Name" value="<?php echo $viewUser['fname']; ?>" readonly required>
						  		</div>
				  			</div>

				  			<div class="col-md-4">
				  				<div class="form-group">
						  			<label>Last Name:</label>
						  			<input type="text" name="lname" id="lname" class="form-control" placeholder="Last Name" value="<?php echo $viewUser['lname']; ?>" readonly required>
						  		</div>
				  			</div>

				  			<div class="col-md-4">
				  				<div class="form-group">
						  			<label>Next of kin Name:</label>
						  			<input type="text" name="oname" id="oname" class="form-control" placeholder="next of kin full Name" value="<?php if(isset($_POST['next_of_kin'])){ echo $next_of_kin; } ?>">
						  		</div>
				  			</div>

				  			<div class="col-md-4">
				  				<div class="form-group">
						  			<label>Email Address:</label>
						  			<input type="text" name="email" id="email" class="form-control" placeholder="Email Address" value="<?php echo $viewUser['email']; ?>" readonly required>
						  		</div>
				  			</div>

				  			<div class="col-md-4">
				  				<div class="form-group">
						  			<label>Phone Number</label>
						  			<input type="text" name="phone" id="phone" class="form-control" placeholder="Phone Number" value="<?php echo $viewUser['phone']; ?>" readonly required>
						  		</div>
				  			</div>

				  			<div class="col-md-4">
				  				<div class="form-group">
						  			<label>kin_phone</label>
						  			<input type="text" name="kin_phone" id="kin_phone" class="form-control" placeholder="next of kin phone number" required value="<?php if(isset($_POST['kin_phone'])){ echo $kin_phone; } ?>">
						  		</div>
				  			</div>

				  			<div class="col-md-4">
				  				<div class="form-group">
						  			<label>Gender</label>
						  			<select class="form-control" name="gender" id="gender" required>
						  				<option hidden>Select Gender</option>
						  				<option value="<?php if(isset($_POST['gender'])){ echo $gender; } ?>"><?php if(isset($_POST['gender'])){ echo $gender; } ?></option>
						  				<option value="male">Male</option>
						  				<option value="female">Female</option>
						  			</select>
						  		</div>
				  			</div>

				  			<div class="col-md-4">
				  				<div class="form-group">
				  					<label>Marital Status</label>
						  			<select class="form-control" name="m_status" id="m_status" required>
						  				<option hidden>Marital Status</option>
						  				<option value="<?php if(isset($_POST['m_status'])){ echo $m_status; } ?>"><?php if(isset($_POST['m_status'])){ echo $m_status; } ?></option>
						  				<option value="single">Single</option>
						  				<option value="married">Married</option>
						  				<option value="disvorce">Disvorce</option>
						  			</select>
						  		</div>
				  			</div>

				  			<div class="col-md-4">
				  				<div class="form-group">
						  			<label>City:</label>
						  			<input type="text" name="city" id="city" class="form-control" placeholder="City" required value="<?php if(isset($_POST['city'])){ echo $city; } ?>">
						  		</div>
				  			</div>

				  			<div class="col-md-12">
				  				<div class="form-group">
						  			<label>Contact Address:</label>
						  			<input type="text" name="address" id="address" class="form-control" placeholder="Contact Address" required value="<?php if(isset($_POST['address'])){ echo $address; } ?>">
						  		</div>
				  			</div>

				  		</div>

				  		<div class="form-group">
				  			<input type="submit"  name="profile" id="profile" class="btn btn-default pull-right" value="Save Profile">
				  		</div>
				  	</form>

				  </div>
				</div>
			</div>
		</div>
	</div>




	<?php require 'config/footer.php'; ?>


	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

</body>
</html>