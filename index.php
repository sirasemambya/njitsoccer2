<?php
	ob_start();
	session_start();
	$filepath = "";

	include($filepath . "autoload.php");
	autoload($filepath);

	if(isset($_SESSION['schoolid'])) {
		header("Location: team.php");
	} elseif(isset($_SESSION['playerid'])) {
		header("Location: myteams.php");
	} elseif(isset($_SESSION['refemail'])) {
		header("Location: schedule.php");
	}

	if(isset($_POST['lsubmit'])) {
		$email = $_POST['email'];
		$password = $_POST['password'];

		try {
			include($filepath . "connect-to-db.php");

			# Check to see if the email and password are connected to a school account
			$sch_sql = "SELECT COUNT(*) FROM schoolaccount WHERE Email=:email AND Password=:password;";
			$sch_statement = $pdo->prepare($sch_sql);
			$sch_statement->bindValue(':email', $email);
			$sch_statement->bindValue(':password', $password);
			$sch_statement->execute();
			$sch_rowCount = $sch_statement->fetchColumn(0);


			if($sch_rowCount == 1) {
				$ss_sql = "SELECT * FROM schoolaccount WHERE Email=:email AND Password=:password;";
				$ss_statement = $pdo->prepare($ss_sql);
				$ss_statement->bindValue(':email', $email);
				$ss_statement->bindValue(':password', $password);
				$ss_statement->execute();
				$ss_row = $ss_statement->fetch(PDO::FETCH_ASSOC);

				$_SESSION['schoolid'] = $ss_row['SchoolID'];
				$_SESSION['schoolname'] = $ss_row['SchoolName'];
				$pdo = null;
				header('Location: team.php');
			} 

			$pdo = null;
		}
		catch (PDOException $e) {
			die($e->getMessage());
		}
	}


?>

<!DOCTYPE html>
<html>

<?php
	head("NJITsoccer","");
?>

<body>
	<div class="container-fluid">
		<?php navbar('home','','#','');?>
		<div id="login" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">Log In</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-10 col-xs-push-1 col-sm-10 col-sm-push-1 col-md-10 col-md-push-1">
								<form method="post" action="index.php" id="loginform">
									<div class="form-group">
										<label class="control-label" for="email">Email Address</label>
										<input type="email" class="form-control" id="email" name="email" required data-toggle="tooltip" data-placement="left" title="Enter bsmith@tech.edu for school account and justinb31@tech.edu for player account"/>
										<span class="text-danger"><small></small></span>
									</div>
									<div class="form-group">
										<label class="control-label" for="password">Password</label>
										<input type="password" class="form-control" id="password" name="password" required data-toggle="tooltip" data-placement="left"/>
										<span class="text-danger"><small></small></span>
									</div>
									<button type="submit" class="btn btn-success btn-block" id="lsubmit" name="lsubmit">Log In</button>
								</form>
								<hr class="separator">
								<p class="text-center" data-html="true"><br>Don't have an account?<a href="signup.php">&nbsp;Sign up here</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<?php if(isset($error)){?>
		<div class="row">
			<div class="col-md-12">
				<div class="alert alert-dismissible alert-danger form-alert" style="margin-top: 30px;">
		  			<button type="button" class="close" data-dismiss="alert">
						<span aria-hidden="true">&times;</span>
						<span class="sr-only">Close</span>
					</button>
		  			<p><?php echo $error_message;?></p>
				</div>
			</div>
		</div>
		<?php }?>
		<div class="jumbotron">
			<div class="jumbotron-content text-center">
				<h1><strong>NJIT Intramural League</strong></h1>
				<br>
				<p>One stop location for everything NJIT soccer. Here you are able to view scores and stats.</p>
				<br>
				<p><a href="https://web.njit.edu/~sbs43/NJITsoccer2/signup.php" class="btn btn-primary btn-lg">Get Started &raquo;</a></p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<img src="images/homepage/soccer.jpg" class="img-responsive img-rounded"/>
			</div>
			<div class="col-md-3">
				<img src="images/homepage/pic1.jpg" class="img-responsive img-rounded"/>
			</div>
			<div class="col-md-3">
				<img src="images/homepage/pic2.jpg" class="img-responsive img-rounded"/>
			</div>
			<div class="col-md-3">
				<img src="images/homepage/pic3.jpg" class="img-responsive img-rounded"/>
			</div>
		</div>
		<div class="container">
			<h4 class="text-danger text-center">
				<em>Sira Semambya IT635</em>
			</h4>
		</div>
	</div>
</body>
</html>
