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
    selectValueSets('RoomType');



    function selectValueSets(VLK_CODE) {
        $http.get('/api/HotelAPI/getValueSets/', {
            params: { VLK_CODE: VLK_CODE }
        })
        .then(function successCallback(response) {
            $scope.RoomTypeData = response.data;
            if ($scope.RoomTypeData.length > 0) {
            }
        }, function errorCallback() {
            $scope.Message = "An Error has occured while loading posts!";
        });
    }

    function selectRoomDetails(RoomNo) {
        $http.get('/Room/getHotelRooms/', {
            params: { RoomNo: RoomNo }
        })
        .then(function successCallback(response) {
            $scope.HotelRoomData = response.data;
            if ($scope.HotelRoomData.length > 0) {
            }
        }, function errorCallback() {
            $scope.Message = "An Error has occured while loading posts!";
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
            $scope.Message = "An Error has occured while loading posts!";
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
            $scope.Message = "An Error has occured while loading posts!";
        });
    }

    //Form Validation
    $scope.$watch("f2.$valid", function (isValid) {
        $scope.IsFormValid2 = isValid;
    });

    //Modify Hotel Room
    $scope.modiRoom = function (idx) {
        $scope.RoomID = $scope.HotelRoomData[idx].RoomID;
        $scope.RoomNo = $scope.HotelRoomData[idx].RoomNo;
        $scope.RoomType = $scope.HotelRoomData[idx].RoomType;
        $scope.Prize = $scope.HotelRoomData[idx].Prize;
    }

    //Clean modify form
    function cleardetails() {
        $scope.RoomID = 0;
        $scope.RoomNo = "";
        $scope.RoomType = "";
        $scope.Prize = "";

        $scope.IsFormSubmitted2 = false;
    }

    //saveRoom(Post)
    $scope.saveRoom = function () {
        $scope.IsFormSubmitted2 = true;
        $scope.Message = "";
        if ($scope.f2.$valid) {//同$scope.$watch("f2.$valid")
            $http.post('/Room/modifyHotelRoom/'
                , $.param({ RoomID: $scope.RoomID, RoomNo: $scope.RoomNo, RoomType: $scope.RoomType, Prize: $scope.Prize })
                , { headers: { 'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;' } }
            )
            .then(function successCallback(response) {
                $scope.Message = response.data[0];
                cleardetails();
                selectRoomDetails('');
                $scope.IsFormSubmitted2 = false;
            }, function errorCallback() {
                $scope.Message = "An Error has occured while loading posts!";
            });
        }
        else {
            $scope.Message = "All the fields are required.";
        }
    };

    //delRoom
    $scope.delRoom = function (idx) {
        $scope.RoomID = $scope.HotelRoomData[idx].RoomID;
        $scope.RoomNo = $scope.HotelRoomData[idx].RoomNo;

        if (confirm("RoomNo:" + $scope.RoomNo + ",確定刪除嗎?")) {
            $scope.IsFormSubmitted2 = true;
            $scope.Message = "";

            $http.post('/Room/deleteHotelRoom/'
                , $.param({ RoomID: $scope.RoomID })
                , { headers: { 'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;' } }
            )
            .then(function successCallback(response) {
                $scope.Message = response.data[0];
                cleardetails();
                selectRoomDetails('');
                $scope.IsFormSubmitted2 = false;
            }, function errorCallback() {
                $scope.Message = "An Error has occured while loading posts!";
            });
        }
    }

})