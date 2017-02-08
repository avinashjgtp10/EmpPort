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
<body>
	<div class="container-fluid" ng-app="AdminApp"
		ng-controller="AdminCtrl">
		<div class="row">

			<nav class="navbar  nvbar">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#"> <img
							src="Asset/Img/Eli_Lilly_and_Company.svg.png" alt=""
							style="height: 30px" />
						</a>
					</div>
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#ExitTest">Exit Test</a></li>
						<li><a href="#Inventory">Inventory</a></li>

					</ul>
					<ul class="nav navbar-nav navbar-right">
					<li><a href="Login.jsp">Sign Up</a></li>
                  	<li class="divider-vertical"></li>
					<li class="dropdown">
						<a class="dropdown-toggle" href="" data-toggle="dropdown">Avinash <strong class="caret"></strong></a>
						<div class="dropdown-menu" >
						<label>System id:</label>C217910
						
							<form method="post" action="login" accept-charset="UTF-8">
								<input class="btn btn-primary btn-block" type="button"  value="Change Password">
							</form>
						</div>
					</li>		
						
					</ul>
				</div>
			</nav>
		</div>