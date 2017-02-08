angular.module("AdminApp", ["ngRoute"]).config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "DeviceInfo.jsp"
    })
    .when("/ExitTest", {
        templateUrl : "CheckQueAns.jsp"
    })
    .when("/Inventory", {
        templateUrl : "DeviceInfo.jsp"
    })
    .otherwise({
        templateUrl: "DeviceInfo.jsp"
    });

});