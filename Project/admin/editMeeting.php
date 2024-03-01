<?php
//session_start();

include_once("../conn.php");
if(isset($_GET['id'])){
    $id=$_GET['id'];

    try{
        $sql ="SELECT * FROM `meetings` WHERE `id`=?";
        $stmt = $conn->prepare($sql);
        $stmt->execute([$id]);
        $result=$stmt->fetch();
        $title1=$result['title'];
		$meeting_date=$result['meeting_date'];
        $meeting_time=$result['time'];
        $active = $result['active'] ? "checked" : "";
}catch(PDOException $e) {
        echo $e->getMessage();
    }



if($_SERVER["REQUEST_METHOD"]=="POST"){
  

    try {
        $sql = "UPDATE `meetings` SET `title`=?,`meeting_date`=?,`active`=?,`time`=? WHERE `id` =?";
        $title1 = $_POST['title'];
        $meeting_date = $_POST['meeting_date'];
        $meeting_time = $_POST['time'];
        $active = isset($_POST['active']) ? 1 : 0;
        $stmt = $conn->prepare($sql);
        $stmt->execute([$title1,$meeting_date , $active, $meeting_time , $id]);
        $msg="updated Meeting Successfully";
        $alert="alert-success";
        echo "<div class=\"alert $alert\">
                <strong>$msg</strong> 
              </div>";
    } catch (PDOException $e) {
		$msg="Error:". $e->getMessage();
        $alert="alert-warning";
        echo "<div class=\"alert $alert\">
                <strong>$msg</strong> 
              </div>";
    }    
}
}
include_once("include/photo_info.php");
?>
<!DOCTYPE html>
<html lang="en">
  <head>
  <?php
    $title="Edit Photos";
    include_once("include/head.php");
    ?>
</head>

<body class="nav-md">
<?php
    include_once("include/imageadmin.php");
    ?>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<?php
              include_once("include/menuprofile.php");
            ?>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<?php
               include_once("include/sidebar.php");
             ?>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<?php
               include_once("include/menufooter.php");
             ?>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<?php
              include_once("include/navigation.php");
            ?>
			<!-- /top navigation -->

			<!-- page content -->
			<?php
              include_once("include/pagecontentmeeting.php");
            ?>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 ">
							<div class="x_panel">
								<div class="x_title">
									<h2>Edit Photo</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
										</li>
										<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a class="dropdown-item" href="#">Settings 1</a>
												</li>
												<li><a class="dropdown-item" href="#">Settings 2</a>
												</li>
											</ul>
										</li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">
    <br />
    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="" method="POST">
        <div class="form-group row">
            <label class="col-md-3 col-sm-3 col-form-label" for="meeting-date">Meeting Date <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6">
                <input type="date" id="meeting-date" required="required" class="form-control" name="meeting_date" value="<?php echo $meeting_date?>">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-md-3 col-sm-3 col-form-label" for="meeting-time">Meeting Time <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6">
                <input type="time" id="meeting-time" required="required" class="form-control" name="time" value="<?php echo $meeting_time?>">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-md-3 col-sm-3 col-form-label" for="title">Title <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6">
                <input type="text" id="title" required="required" class="form-control" name="title" value="<?php echo $title1?>">
            </div>
        </div>
        <div class="item form-group">
			<label class="col-form-label col-md-3 col-sm-3 label-align">Active</label>
				<div class="checkbox">
					<label>
						<input type="checkbox" class="flat" name="active" <?php echo $active ;?>>
					</label>
			    </div>
		</div>
        <div class="form-group row">
            <div class="col-md-6 col-sm-6 offset-md-3">
                <button class="btn btn-primary" type="button" onclick="window.location.href='meetings.php'">Cancel</button>
                <button type="submit" class="btn btn-success">Update</button>
            </div>
        </div>
    </form>
</div>

							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- /page content -->

			<!-- footer content -->
			<?php
              include_once("include/footer.php");
            ?>
</body>
</html>
