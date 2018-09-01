/// <reference path="../angular.js" />  
/// <reference path="../angular.min.js" />   
/// <reference path="../angular-animate.js" />   
/// <reference path="../angular-animate.min.js" /> 

var app;
(function () {
    app = angular.module("AngularJs_Module", ['ngAnimate']);
})();

app.filter('myFilter', function () {
    return function (input) {
        if (input !=null && input !="") {
            return '(' + input + ')';
        } else {
            return input;
        }
    }
});

/*
restrict	說明該directive要以何種方式宣告，像是元素、屬性、註解
priority	說明該directive和其他在同個元素的directive的優先度為何，數字越大優先度越高
template	用字串的方式編寫HTML碼，使用該directive的元素將會替換為這裡指定的HTML
templateUrl 同template，但是是指定template的url
replace		若為true則會用template取代原本的Html元素，若為false則將元素insert到元本的Html裡面
transclude	設為true可以將原本的HTML的元素內容移到template定義的HTML元素裡
scope		若給一物件則會建立一個新的scope，若指定為true則繼成自父scope
controller	為directive定義一個controller(大部分的目的是為了和其他directive互動)
require		指定該directive需要和哪些directive互動
link		可以在該方法內增加監聽事件($scope.$watch)，或初始化一些資訊
compile		在link執行之前會先被執行，用於用程式動態修改template
*/
app.directive('roomType', function () {//須駝峰式命名法.tag名則用-分開(<room-type></room-type>)
    return {
        // E = 元素, A = 屬性, C = class, m = Html 註解
        restrict: 'E',
        
        //檢查必要的屬性，否則會出錯
        // ^ -- 檢查掛directive的元素與父元素的屬性存在。ex：require: ['^ngModel']
        // ^^ - 只檢查父元素屬性存在。ex：require: ['^^ngModel']
        // ? -- 就算找不到也不要出錯，使其檢查通過。ex：require: ['?ngModel']
        require: ['^form', '^ngController'],

        //"="：代表在 HTML 內的屬性值是一個物件（或變數），將這個物件（或變數）指定給 scope object 的屬性。
        //"@"：代表在 HTML 內的屬性值是一個純字串，指定後我們從 scope object 的屬性取到的值，就會是在 HTML 內的屬性上出現的字串。
        //"&"：代表在 HTML 內的屬性值是一個函式，指定後我們就可以直接從 scope object 的屬性去呼叫。
        scope: {
            roomTypeData: '='//,
            //onAddressClicked: '&' // Address被點擊時需要呼叫的外部方法 
        },
        controller: ['$scope', function ($scope) {
            //
            var vm = this;
            //
            //    // 點選 Address 
            //    vm.clickAddress = function () {
            //
            //        // 通知主要 Controller (滿足所有跨Directive互動需求)
            //        vm.mainctrl.locationAddressClicked();
            //
            //        // 呼叫傳入function
            //        // 通知父層 educationInfo Directive (與上層Directive互動需求) 
            //        vm.onAddressClicked();
            //
            //    }
            //
                vm.test = function () {
                    alert("test");
                }
            //vm.mainctrl.test=vm.test;
        }],
        template: '<select name="selRoomType" id="selRoomType" required ng-click="vm.test()">' +
                '<option value="" selected>-- Select --</option>'+
                ' <option ng-repeat="t in vm.roomTypeData" value="{{t.VLS_CODE}}">{{t.VLS_CODE}}_{{t.VLS_NAME}}{{t.ATTRIBUTE1|myFilter}}</option>' +
                '</select>',

        // Ensure that properties are bound to the controller instead of the scope. (Angular 1.3+)
        bindToController: true,
        controllerAs: 'vm',
        //
        //// DOM manipulation
        link: function (scope, element, attrs, ctrls) {  
            scope.vm.form = ctrls[0];      // 提供 ngMessages 使用 form 來呈現錯誤訊息
            scope.vm.mainctrl = ctrls[1];  // 使用此 directive 的主要 Controller (滿足跨Directive互動需求)
            scope.vm.test = test;
        }
    };
});

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

    $scope.trest = function () {
        alert("test1111");
        //$scope.$broadcast("refresh-svr-time");
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
            }, function errorCallback() {
                $scope.Message = "An Error has occured while loading posts!";
            });
        }
    }

})