<?php
date_default_timezone_set('Asia/Manila');

if (isset($_POST['reg_mode'])) {
checkemail();	
}else{
header("location:../");		
}


function checkemail() {
	
    try {
	    require '../constants/db_config.php';
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $email = $_POST['email'];
        $account_type = $_POST['acctype'];
        
        $stmt = $conn->prepare("SELECT * FROM tbl_users WHERE email = :email");
        $stmt->bindParam(':email', $email);
        $stmt->execute();
        $result = $stmt->fetchAll();
        $records = count($result);

        register();
            
        if ($records > 0) {
            header("location:../register.php?p=$role&r=0927");		
        }
					  
	}catch(PDOException $e)
    {
        header("location:../register.php?p=$role&r=4568");
    }
}

function register() {
    try {
        require '../constants/db_config.php';
        require '../constants/uniques.php';

        $role = ['employee'];
        $account_type = $_POST['acctype'];
        $last_login = date('d-m-Y h:m A [T P]');
        $member_no = 'SSR'.time().get_rand_numbers(4).'';
        $email = $_POST['email'];
        $fname = ucwords($_POST['fname']);
        $lname = ucwords($_POST['lname']);
        $login = md5($_POST['password']);
        $cname = ucwords($_POST['company']);
        $ctype = ucwords($_POST['type']);

        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        if($account_type == '101') {
            $queryString = "INSERT INTO tbl_users (first_name, last_name, email, last_login, login, role, member_no)
            VALUES (:fname, :lname, :email, :lastlogin, :login, :role, :memberno)";
        }
        else {
            array_push($role, 'employer');
            $queryString = "INSERT INTO tbl_users (first_name, last_name, email, last_login, login, role, member_no, company, title)
            VALUES (:fname, :lname, :email, :lastlogin, :login, :role, :memberno, :company, :title)";
        }

        $stmt = $conn->prepare($queryString);

        $stmt->bindParam(':fname', $fname);
        $stmt->bindParam(':lname', $lname);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':lastlogin', $last_login);
        $stmt->bindParam(':login', $login);
        $stmt->bindParam(':role', json_encode($role));
        $stmt->bindParam(':memberno', $member_no);

        if($account_type != '101') {
            $stmt->bindParam(':company', $cname);
            $stmt->bindParam(':title', $ctype);
        }

        $stmt->execute();

        authenticate($email, $login, $conn, $last_login);
        header("location:../employee");
    }
    catch(PDOException $e)
    {
        echo $e;
    }
}

function authenticate($myemail, $mypass, $conn) {
    try {
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

		}
	
	}

					  
	}catch(PDOException $e)
    {

    }
}
// function register_as_employee() {

// try {
// 	require '../constants/db_config.php';
// 	require '../constants/uniques.php';
// 	$role = 'employee';
//     $account_type = $_POST['acctype'];
//     $last_login = date('d-m-Y h:m A [T P]');
// 	$member_no = 'EM'.time().get_rand_numbers(4).'';
//     $fname = ucwords($_POST['fname']);
//     $lname = ucwords($_POST['lname']);
//     $email = $_POST['email'];
//     $login = md5($_POST['password']);
	
//     $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
//     $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//     $stmt = $conn->prepare("INSERT INTO tbl_users (first_name, last_name, email, last_login, login, role, member_no) 
// 	VALUES (:fname, :lname, :email, :lastlogin, :login, :role, :memberno)");
//     $stmt->bindParam(':fname', $fname);
//     $stmt->bindParam(':lname', $lname);
//     $stmt->bindParam(':email', $email);
// 	$stmt->bindParam(':lastlogin', $last_login);
//     $stmt->bindParam(':login', $login);
//     $stmt->bindParam(':role', $role);
// 	$stmt->bindParam(':memberno', $member_no);
//     $stmt->execute();
// 	header("location:../register.php?p=Employee&r=1123");				  
// 	}catch(PDOException $e)
//     {
//     header("location:../register.php?p=Employee&r=4568");
//     }	
	
// }

// function register_as_employer() {
// try {
// 	require '../constants/db_config.php';
// 	require '../constants/uniques.php';
// 	$role = 'employer';
//     $account_type = $_POST['acctype'];
//     $last_login = date('d-m-Y h:m A [T P]');
//     $comp_no = 'CM'.time().get_rand_numbers(4).'';
//     $cname = ucwords($_POST['company']);
//     $ctype = ucwords($_POST['type']);
//     $email = $_POST['email'];
//     $login = md5($_POST['password']);
	
//     $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
//     $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//     $stmt = $conn->prepare("INSERT INTO tbl_users (first_name, title, email, last_login, login, role, member_no) 
// 	VALUES (:fname, :title, :email, :lastlogin, :login, :role, :memberno)");
//     $stmt->bindParam(':fname', $cname);
//     $stmt->bindParam(':title', $ctype);
//     $stmt->bindParam(':email', $email);
// 	$stmt->bindParam(':lastlogin', $last_login);
//     $stmt->bindParam(':login', $login);
//     $stmt->bindParam(':role', $role);
// 	$stmt->bindParam(':memberno', $comp_no);
//     $stmt->execute();
// 	header("location:../register.php?p=Employer&r=1123");				  
// 	}catch(PDOException $e)
//     {
//     header("location:../register.php?p=Employer&r=4568");
//     }	
	
// }


?>