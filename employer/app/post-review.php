<?php
require '../../constants/db_config.php';
require '../constants/check-login.php';

    try {
        $member_no = $_SESSION['myid'];
        $ref_no = $_POST['ref_no'];
        $title = $_POST['title'];
        $review = $_POST['review'];
        $rating = $_POST['rating'];
        $time = time();

        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        
        $stmt = $conn->prepare("INSERT INTO tbl_reviews (member_no, ref_no, review_title, review, rating, time) 
            VALUES (:member_no, :ref_no, :review_title, :review, :rating, :time)");

        $stmt->bindParam(':member_no', $member_no);
        $stmt->bindParam(':ref_no', $ref_no);
        $stmt->bindParam(':review_title', $title);
        $stmt->bindParam(':review', $review);
        $stmt->bindParam(':rating', $rating);
        $stmt->bindParam(':time', $time);

        $stmt->execute();
        header("location:/".$project."/employee-detail.php?empid=".$ref_no. '&rating=all');	 
	}catch(PDOException $e)
    {
        echo "error: " . $e->getMessage();
    }

?>