/// <reference path="../angular.js" />  
/// <reference path="../angular.min.js" />   
/// <reference path="../angular-animate.js" />   
/// <reference path="../angular-animate.min.js" /> 

var app;
(function () {
    app = angular.module("AngularJs_Module", ['ngAnimate']);
})();

app.controller("Tab_Controller", function ($scope, $timeout, $rootScope, $window, $http) {
    $scope.selTab = "cust";

    $scope.selectTab = function (tabName) {
        $scope.selTab = tabName;
    }

    $scope.isSelected = function (tabName) {
        return $scope.selTab === tabName;
    }

});

