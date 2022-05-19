<?php 

$disabled = 'enabled';
if(!$_SESSION) $disabled = 'disabled';
elseif($_SESSION['role'] != 'employee') $disabled = 'disabled'; 

try{
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $total_rating = 0;

    $filter = '';

    if($_GET['rating'] != 'all') $filter = " AND rating = :rating";

    $query_string = "SELECT tbl_reviews.*, tbl_users.*  FROM tbl_reviews 
        INNER JOIN tbl_users
        ON tbl_users.member_no=tbl_reviews.member_no
        WHERE ref_no = :ref_no" . $filter . 
        " ORDER BY tbl_reviews.review_id DESC LIMIT 0,10";
    
    $stmt = $conn->prepare($query_string);
    $stmt->bindParam(':ref_no', $_GET['ref']);
    if($_GET['rating'] != 'all') $stmt->bindParam(':rating', $_GET['rating']);

    $stmt->execute();
    $reviews = $stmt->fetchAll();

    $stmt = $conn->prepare("SELECT COUNT(tbl_reviews.review_id) AS review_count,  SUM(tbl_reviews.rating) AS total_rating 
        FROM tbl_reviews 
        INNER JOIN tbl_users
        ON tbl_users.member_no=tbl_reviews.member_no
        WHERE ref_no = :ref_no 
        ORDER BY tbl_reviews.review_id DESC LIMIT 0,10;"
    );
    $stmt->bindParam(':ref_no', $_GET['ref']);
    $stmt->execute();
    $total_rating = $stmt->fetchAll();

    if($total_rating[0]['review_count'] > 0 && $total_rating[0]['total_rating'] > 0)
        $total_rating =  $total_rating[0]['total_rating'] / $total_rating[0]['review_count'];
    else
        $total_rating = 0;

    $total_rating =  number_format((float)$total_rating, 1, '.', '');
}catch(PDOException $e)
{
    echo "error: " . $e->getMessage();
}
?>

<div class="GridLex-col-9_sm-8_xs-12">	
    <form action="employee/app/post-review.php" method="POST" enctype="multipart/form-data">			
        <input type="hidden" name="ref_no" value="<?php echo "$company_id"; ?>">
        <div class="admin-content-wrapper">
            <div class="col-sm-6 col-md-10">										
                <div class="form-group">
                    <label>Title</label>
                    <input <?php echo $disabled ?> onkeydown="return event.key != 'Enter';" type="text" name="title" required class="form-control">
                </div>           
            </div>
            <div class="col-sm-6 col-md-2">
                <div class="form-group">
                    <label>Rating</label>
                    <select  <?php echo $disabled ?>  name="rating" required class="selectpicker show-tick form-control" data-live-search="false">
                        <option disabled value="">Select</option>
                        <option value=1>    ⭐</option>
                        <option value=2>   ⭐⭐</option>
                        <option value=3>  ⭐⭐⭐</option>
                        <option value=4> ⭐⭐⭐⭐</option>
                        <option value=5>⭐⭐⭐⭐⭐</option>
                    </select>
                </div>
            </div>

            <div class="form-group bootstrap3-wysihtml5-wrapper">
                <label for=""></label>
                <textarea  <?php echo $disabled ?>  name="review" class="bootstrap3-wysihtml5 form-control" placeholder="Enter your short review ..." style="height: 200px;"></textarea>
            </div>
            <div class="position-relative bottom-0 end-0 mb-1 login-box-link-action">
                <div class="col-auto  bottom-0 end-0">
                    <button <?php echo $disabled ?> type="submit" class="btn btn-primary">Post Review</button>
                </div>
            </div>
        </div>
    </form>
    <div class="form-group">
        <div class="file-drop-zone margin-zero" style="margin: 30px !important; background-color: #fffbf8; height: 100px;">
            <div class="col-sm-6 col-md-2" style="padding-right:0px !important; margin-top: 15px;">
                <label style="font-size: 25px;">
                   <b> <?php echo $total_rating; ?> out of 5</b>
                </label>   
                <label style="font-size: 15px;">
                    <?php 
                        $star = '';
                        for($i=0; $i<$total_rating; $i++){
                            $star = $star . '⭐';
                        }

                        echo '<div for="">' . $star . '</div>';
                    ?>
                </label> 
            </div>
            <div class="col-sm-6 col-md-10">
                <a href="?ref=<?php echo $_GET['ref']?>&rating=all" class="<?php echo $_GET['rating'] == 'all' ? 'active-filter' : '' ?>">
                    <div class="col-sm-6 col-md-1 star-filter" id="all">
                        ALL
                    </div>
                </a>
                <a href="?ref=<?php echo $_GET['ref']?>&rating=1" class="<?php echo $_GET['rating'] == '1' ? 'active-filter' : '' ?>">
                    <div class="col-sm-6 col-md-1 star-filter" id="1-star">
                        ⭐
                    </div>
                </a>
                <a href="?ref=<?php echo $_GET['ref']?>&rating=2" class="<?php echo $_GET['rating'] == '2' ? 'active-filter' : '' ?>">
                    <div class="col-sm-6 col-md-1 star-filter" id="2-star">
                        ⭐⭐
                    </div>
                </a>
                <a href="?ref=<?php echo $_GET['ref']?>&rating=3" class="<?php echo $_GET['rating'] == '3' ? 'active-filter' : '' ?>">
                    <div class="col-sm-6 col-md-1 star-filter" id="3-star">
                        ⭐⭐⭐
                    </div>
                </a>
                <a href="?ref=<?php echo $_GET['ref']?>&rating=4" class="<?php echo $_GET['rating'] == '4' ? 'active-filter' : '' ?>">
                    <div class="col-sm-6 col-md-2 star-filter" id="4-star">
                        ⭐⭐⭐⭐
                    </div>
                </a>
                <a href="?ref=<?php echo $_GET['ref']?>&rating=5" class="<?php echo $_GET['rating'] == '5' ? 'active-filter' : '' ?>">
                    <div class="col-sm-6 col-md-2 star-filter" id="5-star">
                        ⭐⭐⭐⭐⭐
                    </div>
                </a>
            </div>
        </div>
        <?php 
            if(!$reviews){
                echo '
                    <div class="file-drop-zone margin-zero mb-2">
                        no reviews
                    </div>
                ';
            }
            foreach($reviews as $review){
                $star = '';
                for($i=0; $i<$review['rating']; $i++){
                    $star = $star . '⭐';
                }

                if($review['avatar']){
                    $src = 'data:image/jpeg;base64,'.base64_encode($review['avatar']).'';
                }
                else{
                    $src = 'images/default.jpg';
                }

                echo '
                    <div class="col-sm-6 col-md-12 review-break-point">
                        <div class="col-sm-6 col-md-1" style="padding-right:0px !important;">
                            <img class="img-circle autofit2 avatar" alt="image" title="Llynar" src="'.$src.'">
                        </div>
                        <div class="col-sm-6 col-md-11">
                            <div for="">'                          
                                .$review['first_name'] . ' ' . $review['last_name'] .
                            '</div>
                            <div for="">'                      
                                . $star .
                            '</div>
                            <div for="">'                    
                                . date("F j, Y, g:i a",$review['time'])  .
                            '</div>
                            <div style="margin-top: 30px !important;"> <b>'                    
                            . $review['review_title'] .
                            '</b></div>

                            <div style="margin-top: 10px !important;">'                    
                            . $review['review']  .
                            '</div>
                        </div>    
                    </div>
                ';
            }
        ?>
    </div>
</div>

<style>
    .margin-zero{
        margin: 0px !important;
    }
    .avatar{
        height: 50px
    }

    .review-break-point{
        border-bottom: dashed 1px gray;
        padding-bottom: 20px;
        margin-bottom: 50px;
    }
    .star-filter{
        padding: 5px;
        border: 1px solid;
        background-color: #fff;
        margin: 20px; 
        cursor: pointer;
    }
    .active-filter{
        color: red;
    }
</style>