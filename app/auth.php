<?php
	date_default_timezone_set('Asia/Manila');
	$last_login = date('d-m-Y h:m A [T P]');
	require '../constants/db_config.php';
	$myemail = $_POST['email'];
	$mypass = md5($_POST['password']);

    try {
		$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		
		$stmt = $conn->prepare("SELECT * FROM tbl_users WHERE email = :myemail AND login = :mypassword");
		$stmt->bindParam(':myemail', $myemail);
		$stmt->bindParam(':mypassword', $mypass);
		$stmt->execute();
		$result = $stmt->fetchAll();
		$rec = count($result);
		
		if ($rec == "0") {
			header("location:../login.php?r=0346");
		}else{

		foreach($result as $row)
		{
			$role = $row['role'];
			$roles = json_decode($role);

			session_start();
			$_SESSION['logged'] = true;
			foreach($roles as $myrole) {
				if($myrole == 'employee'){
					$_SESSION['myid'] = $row['member_no'];
					$_SESSION['myfname'] = $row['first_name'];
					$_SESSION['mylname'] = $row['last_name'];
					$_SESSION['myemail'] = $row['email'];
					$_SESSION['mydate'] = $row['bdate'];
					$_SESSION['mymonth'] = $row['bmonth'];
					$_SESSION['myyear'] = $row['byear'];
					$_SESSION['myphone'] = $row['phone'];
					$_SESSION['myedu'] = $row['education'];
					$_SESSION['mytitle'] = $row['title'];
					$_SESSION['mycity'] = $row['city'];
					$_SESSION['mystreet'] = $row['street'];
					$_SESSION['myzip'] = $row['zip'];
					$_SESSION['mybarangay'] = $row['barangay'];
					$_SESSION['mydesc'] = $row['about'];


					$_SESSION['avatar'] = $row['avatar'];
					$_SESSION['lastlogin'] = $last_login;
					$_SESSION['avatar'] = $row['avatar'];
					$_SESSION['gender'] = $row['avatar'];
					$_SESSION['employee'] = true;
				}
				else {
					$_SESSION['myid'] = $row['member_no'];
					$_SESSION['compname'] = $row['company'];
					$_SESSION['established'] = $row['byear'];
					$_SESSION['myemail'] = $row['email'];
					$_SESSION['myphone'] = $row['phone'];
					$_SESSION['comptype'] = $row['title'];
					$_SESSION['mycity'] = $row['city'];
					$_SESSION['mystreet'] = $row['street'];
					$_SESSION['myzip'] = $row['zip'];
					$_SESSION['mybarangay'] = $row['barangay'];
					$_SESSION['mydesc'] = $row['about'];
					$_SESSION['avatar'] = $row['avatar'];
					$_SESSION['myserv'] = $row['services'];
					$_SESSION['myexp'] = $row['expertise'];
					$_SESSION['lastlogin'] = $last_login;
					$_SESSION['website'] = $row['website'];
					$_SESSION['people'] = $row['people'];
					$_SESSION['employer'] = true;
				}
			}
			$_SESSION['role'] = 'employee';
	

		try {
			$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			
			$stmt = $conn->prepare("UPDATE tbl_users SET last_login = :lastlogin WHERE email= :email");
			$stmt->bindParam(':lastlogin', $last_login);
			$stmt->bindParam(':email', $myemail);
			$stmt->execute();
			header("location:../employee");
						
		}catch(PDOException $e)
		{

		}
		

		}
	
	}

					  
	}catch(PDOException $e)
    {

    }

?>