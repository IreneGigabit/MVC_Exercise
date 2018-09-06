app.controller("Cust_Controller", function ($scope, $timeout, $rootScope, $window, $http) {
    $scope.Cust = {};



    $scope.selectCust = function (CustArea, CustSeq) {
        $http.get('/Tab/getCust/', {
            params: { CustArea: CustArea, CustSeq: CustSeq }
        })
        .then(function successCallback(response) {
            $scope.Cust = response.data[0];
        }, function errorCallback() {
            console.log("errr");
            $scope.Message = "An Error has occured while loading posts!";
        });
    }
    $scope.selectCust('N', 1624);

});

