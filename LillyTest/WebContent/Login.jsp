<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>LillyExitTest</title>
<!-- Bootstrap -->
<link rel="icon" href="Asset/Img/Eli_Lilly_and_Company.svg.png"
	type="image/x-icon">
<link rel="stylesheet" href="Asset/Bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" href="Asset/CSS/ExitTestCss.css">

</head>
<body bgcolor="#716d6d" style="background-color: #716d6d;">
	<div class="container-fluid" ng-app="AdminApp"
		ng-controller="AdminCtrl">
		<div class="row">



			<div class="col-md-10" ng-show="DivVisiblity">


				<div id="loginbox" style="margin-top: 50px;"
					class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-info">
						<div class="panel-heading">
							<div class="panel-title">
								<span> <img src="Asset/Img/Eli_Lilly_and_Company.svg.png"
									alt="" style="height: 50px" /></span><span> <strong
									style="text-align: center"> Exit Test </strong>
								</span>
							</div>
						</div>

						<div style="padding-top: 30px" class="panel-body">

							<div style="display: none" id="login-alert"
								class="alert alert-danger col-sm-12"></div>

							<form name="loginform" id="loginform" class="form-horizontal"
								role="form">

								<div style="margin-bottom: 25px" class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input
										id="login-username" type="text" class="form-control"
										name="username" value="" ng-model="UserName"
										placeholder="Enter your name here" required>
								</div>

								<div style="margin-bottom: 25px" class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input
										id="login-password" type="password" class="form-control"
										name="password" placeholder="Password is your LillyID"
										ng-model="Password">
								</div>
							</form>
						</div>
						<div class="panel-footer form-group">

							<label><a href=""> Click here</a> to Register</label>

							<button id="btn-login" class="btn btn-primary right"
								ng-click="insertData()" style="float: right">Login</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="Footer.jsp"%>