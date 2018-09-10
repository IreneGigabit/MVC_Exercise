app.controller("Cust_Controller", function ($scope, $timeout, $rootScope, $window, $http) {
    $scope.Cust = {};

    $scope.selectCust = function (CustArea, CustSeq) {
        $http.get('/Tab/getCust/', {
            params: { CustArea: CustArea, CustSeq: CustSeq }
        })
        .then(function successCallback(response) {
            $scope.Cust = response.data[0];
        }, function errorCallback() {
            console.log("err-selectCust");
            $scope.Message = "An Error has occured while loading posts!";
        });
    }

    function getCountryOpt() {
        $http.get('/Tab/getCountryOpt/', {
            params: { SQL: "SELECT * FROM country where markb<>'X' ORDER BY coun_code" }
        })
        .then(function successCallback(response) {
            $scope.optCountry = response.data;
        }, function errorCallback() {
            console.log("err-getOptCountry");
            $scope.Message = "An Error has occured while loading posts!";
        });
    }

    $scope.selectCust('N', 1624);
    getCountryOpt();
});

