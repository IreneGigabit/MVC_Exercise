/// <reference path="../angular.js" />  
/// <reference path="../angular.min.js" />   
/// <reference path="../angular-animate.js" />   
/// <reference path="../angular-animate.min.js" /> 

var app;
(function () {
    app = angular.module("AngularJs_Module", ['ngAnimate']);
})();

app.controller("AngularJs_Controller", function ($scope, $timeout, $rootScope, $window, $http) {
    $scope.date = new Date();
    $scope.MyName = "shanu";
    // For Hotel Room Details
    $scope.RoomID = 0;
    $scope.RoomNo = "";
    $scope.RoomType = "";
    $scope.Prize = "";

    // For Hotel Room Bookin Details
    $scope.BookingID = 0;
    $scope.RoomIDs = "";
   
    $scope.BookedDateFR = $scope.date;
    $scope.BookedDateTO = $scope.date;
    $scope.BookingStatus = "";
    $scope.PaymentStatus = "";
    $scope.AdvancePayed = "0$";
    $scope.TotalAmountPayed = "0$";

    // This method is to get all the Room Details. 
    selectRoomDetails('');
    selectRoomBookingDetails('');
    selectAvailableStatus('');

    function selectRoomDetails(RoomNo) {
        $http.get('/api/HotelAPI/getHotelRooms/', {
            params: { RoomNo: RoomNo }
        })
        .then(function successCallback(response) {
            $scope.HotelRoomData = response.data;
            if ($scope.HotelRoomData.length > 0) {
            }
        }, function errorCallback() {
            $scope.error = "An Error has occured while loading posts!";
        });
    }

    function selectRoomBookingDetails(RoomID) {
        $http.get('/api/HotelAPI/getRoomBookingDetails/', {
            params: { RoomID: RoomID }
        })
        .then(function successCallback(response) {
            $scope.RoomBookingData = response.data;
            if ($scope.RoomBookingData.length > 0) {
            }
        }, function errorCallback() {
            $scope.error = "An Error has occured while loading posts!";
        });
    }

    function selectAvailableStatus(RoomNo) {
        $http.get('/api/HotelAPI/getRoomDashboardDetails/', {
            params: { RoomNo: RoomNo }
        })
        .then(function successCallback(response) {
            $scope.RoomAvailableData = response.data;
            if ($scope.RoomAvailableData.length > 0) {
            }
        }, function errorCallback() {
            $scope.error = "An Error has occured while loading posts!";
        });
    }


    //Form Validation
    $scope.$watch("f2.$valid", function (isValid) {
        $scope.IsFormValid2 = isValid;
    });

    //Save Hotel Room
    $scope.saveRoom = function () {
        $scope.IsFormSubmitted2 = true;
        $scope.Message = "";
        if ($scope.f2.$valid) {//同$scope.$watch("f2.$valid")
            $http.get('/api/HotelAPI/insertHotelRoom/', {
                params: { RoomID: $scope.RoomID, RoomNo: $scope.RoomNo, RoomType: $scope.RoomType, Prize: $scope.Prize }
            })
            .then(function successCallback(response) {
                $scope.roomInserted = response.data;
                alert($scope.roomInserted);
                cleardetails();
                selectRoomDetails('');
            }, function errorCallback() {
                $scope.error = "An Error has occured while loading posts!";
            });
        }
        else {
            $scope.Message = "All the fields are required.";
        }
    };

    //
    function cleardetails() {
        $scope.RoomID = 0;
        $scope.RoomNo = "";
        $scope.RoomType = "";
        $scope.Prize = "";

        $scope.IsFormSubmitted2 = false;
    }
})