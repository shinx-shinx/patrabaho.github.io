<?php
date_default_timezone_set('Asia/Manila');
require '../../constants/db_config.php';
require '../constants/check-login.php';
require '../../constants/uniques.php';
$postdate = date('F d, Y');
$job_id = ''.time().get_rand_numbers(4).'';
$title  = ucwords($_POST['title']);
$city  = ucwords($_POST['city']);
$barangay = $_POST['barangays'];
$category = $_POST['category'];
$type = $_POST['jobtype'];
$exp = $_POST['experience'];
$salarytype = $_POST['salarytype'];
$salary = $_POST['salary'];
$desc = ucfirst($_POST['description']);
$rec = ucfirst($_POST['requirements']);
$res = ucfirst($_POST['responsiblities']);
$deadline = $_POST['deadline'];

try {
$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
$stmt = $conn->prepare("INSERT INTO tbl_jobs (job_id, title, city, barangay, category, type, experience, salarytype, salary, description, responsibility, requirements, company, date_posted, closing_date, enc_id)
 VALUES (:jobid, :title, :city, :barangay, :category, :type, :experience, :salarytype, :salary, :description, :responsibility, :requirements, :company, :dateposted, :closingdate, :enc_id)");
$stmt->bindParam(':jobid', $job_id);
$stmt->bindParam(':title', $title);
$stmt->bindParam(':city', $city);
$stmt->bindParam(':barangay', $barangay);
$stmt->bindParam(':category', $category);
$stmt->bindParam(':type', $type);
$stmt->bindParam(':experience', $exp);
$stmt->bindParam(':salarytype', $salarytype);
$stmt->bindParam(':salary', $salary);
$stmt->bindParam(':description', $desc);
$stmt->bindParam(':responsibility', $res);
$stmt->bindParam(':requirements', $rec);
$stmt->bindParam(':company', $myid);
$stmt->bindParam(':dateposted', $postdate);
$stmt->bindParam(':closingdate', $deadline);
$stmt->bindParam(':enc_id', get_rand_numbers(2));
$stmt->execute();
header("location:../post-job.php?r=9843");		

}catch(PDOException $e)
{
echo "Connection failed: " . $e->getMessage();
}

?>