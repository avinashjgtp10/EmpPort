<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Lilly Exit Test</title>
<link rel="icon" href="Asset/Img/Eli_Lilly_and_Company.svg.png"
	type="image/x-icon">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<link rel="stylesheet" href="Asset/CSS/ExitTestCss.css">

<style>
.list-group-item:hover {
	background-color: red;
}

input[placeholder],[placeholder],*[placeholder] {
	font-weight: bold;
}
</style>
</head>
<body id="loginbd">

	<div class="container" ng-app="AdminApp" ng-controller="AdminCtrl">


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
							ngclick="insertData()" style="float: right">Login</button>
							
							
					</div>
				</div>
			</div>

		</div>




	</div>
	
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.1/angular.min.js"></script>
	<script src="Assest/Bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script
		src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-animate.js"></script>
	<script
		src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-sanitize.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>
	<script src="Asset/JavaScript/TestAngularJs.js" type="text/javascript"></script>
</body>
</html>
