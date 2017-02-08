var adminApp = angular.module("AdminApp", [ "ngRoute" ]);

adminApp.config(function($routeProvider) {
	$routeProvider.when("/", {
		templateUrl : "DeviceInfo.jsp"
	}).when("/Inventory", {
		templateUrl : "DeviceInfo.jsp"
	}).when("/ExitTest", {
		templateUrl : "TestFile.jsp"
	}).otherwise({
		templateUrl : "DeviceInfo.jsp"
	});
});

adminApp.controller("AdminCtrl", function($scope, $http, $timeout,$location) {
	$scope.DivVisiblity = true;
	$scope.QueVisiblity = false;

	$scope.EmpOption = true;
	$scope.CheckPaper = false;

	$scope.ValJson = [];
	$scope.opt1 = [];
	$scope.count = 0;
	$scope.v = [];
	$scope.a = 0;
	$scope.AdminName=null;

	$scope.Submit = function() {
		$scope.QueVal = angular.element('#search').val();
		if ($scope.QueVal !== "ExamOver") {
			$http({
				method : "POST",
				url : 'QuestionAnswer',
				data : {
					'Answer' : $scope.Answer,
					'UserId' : $scope.paperId,
					'Question' : angular.element('#search').val(),
				}
			}).then(function success(response) {
				$scope.AnswerSubmit = response.data;
				console.log(response.data);
			});
		} else {
			$scope.DivVisiblity = true;
			$scope.QueVisiblity = false;
		}
	};

	$scope.insertData = function() {

		$http({
			method : "POST",
			url : 'log',
			dataType : 'json',
			data : {
				'UserName' : $scope.UserName,
				'Password' : $scope.Password,
			}
		}).then(function success(response) {
			console.log(response.data.items);
			$scope.Access = response.data.items.Access;
			if ($scope.Access == "Admin") {
				window.open("HomePage.jsp","_self");
				$scope.AdminName=response.data.items.UserName;
				console.log($scope.AdminName);
			} 
			else if($scope.Access == "User") {
				alert($scope.Access);
			}
			else{
				alert("Error");
			}

		});

		/*
		 * $http({ method : "POST", url : 'UserRegister', data : { 'Status' :
		 * $scope.Status, 'LillyId' : $scope.LillyId, } }).then(function
		 * success(response) {
		 * 
		 * $scope.Status = ""; $scope.msg = response.data;
		 * 
		 * if ($scope.msg !== null) { $scope.paperId = $scope.msg;
		 * $scope.DivVisiblity = false; $scope.QueVisiblity = true; } });
		 */
	};

	var re = [];

	$scope.aname = {
		model : null,
		avilOption : [

		{
			id : '129',
			name : 'Check'
		}, {
			id : '141',
			name : 'Chetna'
		}, {
			id : '138',
			name : 'Ravindra'
		}, {
			id : '140',
			name : 'Neha'
		}, {
			id : '141',
			name : 'Ankush'
		} ]
	}

	$scope.Check = function() {
		$scope.uid = $scope.aname.model;

		if ($scope.uid != null) {
			$scope.CheckPaper = true;

			$http({
				method : "POST",
				url : 'CheckServlet',
				dataType : 'json',
				data : {
					'Uid' : $scope.uid,
				}
			}).then(function success(response) {

				$scope.results = [];
				$scope.results.push(response.data.items);
				console.log(response.data.items);
				$scope.User_Id = response.data.items.User_Id[0];
				$scope.ans = response.data.items.Answer;
				$scope.que = response.data.items.Question;
				$scope.Sum = response.data.items.Sum;
				$scope.Count = response.data.items.Count;
				$scope.Quesde = response.data.items.Question[0];
				$scope.AnsDe = response.data.items.Answer[1];

			});
		} else {
			alert("Please select name");
		}

	};

	$scope.count = 0;
	$scope.AnsSubmit = function() {
		var mar = document.getElementById("Mark").value;
		var Question = document.getElementById("Ques").value;
		$scope.mark = mar;
		$scope.count++;

		if ($scope.Quesde == null) {

			alert($scope.Sum + " " + $scope.Count);
			$scope.CheckPaper = false;

		} else if (typeof mar !== "undefined" && mar !== null) {
			console.log(Question + " " + mar + " " + $scope.User_Id);
			$http({
				method : "POST",
				url : 'SubmitMark',
				data : {
					'Question' : Question,
					'Mark' : mar,
					'UserId' : $scope.User_Id,
				}
			}).then(function success(response) {
				console.log(response.data);
				if (response.data == "Error") {
					$scope.alertDisplay = "Error";
				} else {
					$scope.resMsg = "Marks has been updated successfully";
					document.getElementById("Mark").value = "";
				}

			});
			$scope.Quesde = $scope.que[$scope.count];
			$scope.AnsDe = $scope.ans[$scope.count + 1];

			$scope.alertDisplay = true;
			$timeout(function() {
				$scope.alertDisplay = false;
			}, 2000);

		} else {
			alert("Please Enter marks");
		}

	};

	/* User Login */

});
