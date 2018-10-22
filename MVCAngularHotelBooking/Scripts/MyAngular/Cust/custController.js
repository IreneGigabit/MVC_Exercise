app.controller("Cust_Controller", function ($scope, $timeout, $rootScope, $window, $http) {
    $scope.Cust = {};

    $scope.selectCust = function (CustArea, CustSeq) {
        $scope.Cust = {};
        $http.get('/Tab/getCust/', {
            params: { CustArea: CustArea, CustSeq: CustSeq }
        })
        .then(function successCallback(response) {
            if (response.data.length == 0) {
                $scope.Cust = {};
                $scope.Cust.cust_area = CustArea;
                $scope.Cust.cust_seq = CustSeq;
            } else {
                $scope.Cust = response.data[0]
                $scope.Cust.apclassnm = "";
                switch ($scope.Cust.apclass) {
                    case "AA": $scope.Cust.apclassnm = "本國公司機關無統編者"; break;
                    case "AB": $scope.Cust.apclassnm = "公司與機關團體(大企業)"; break;
                    case "AC": $scope.Cust.apclassnm = "公司與機關團體(小企業)"; break;
                    case "B": $scope.Cust.apclassnm = "本國人(身份證)"; break;
                    case "CA": $scope.Cust.apclassnm = "外國人(自動流水號)"; break;
                    case "CB": $scope.Cust.apclassnm = "外國人(智慧財產局編碼)"; break;
                    case "CT": $scope.Cust.apclassnm = "外國人(國外所申請人號)"; break;
                }
            }
        }, function errorCallback() {
            alert("err-selectCust");
            $scope.Message = "An Error has occured while loading posts!";
        });
    }

    //國籍
    function getCountryOpt() {
        $http.get('/Tab/getSQLData/', {
            params: { SQL: "SELECT coun_code,coun_c FROM country where markb<>'X' ORDER BY coun_code" }
        })
        .then(function successCallback(response) {
            $scope.optCountry = response.data;
        }, function errorCallback() {
            alert("err-getCountryOpt");
            $scope.Message = "An Error has occured while loading posts!";
        });
    }

    //顧問種類
    function getConCodeOpt() {
        $http.get('/Tab/getSQLData/', {
            params: { SQL: "select cust_code,code_name from cust_code where code_type='H' order by cust_code" }
        })
        .then(function successCallback(response) {
            $scope.optConCode = response.data;
        }, function errorCallback() {
            alert("err-getConCodeOpt");
            $scope.Message = "An Error has occured while loading posts!";
        });
    }

    //折扣代碼
    function getDisTypeOpt() {
        $http.get('/Tab/getSQLData/', {
            params: { SQL: "select cust_code,code_name from cust_code where code_type='Discount' order by cust_code" }
        })
        .then(function successCallback(response) {
            $scope.optDisType = response.data;
        }, function errorCallback() {
            alert("err-getDisTypeOpt");
            $scope.Message = "An Error has occured while loading posts!";
        });
    }

    //付款條件
    function getPayTypeOpt() {
        $http.get('/Tab/getSQLData/', {
            params: { SQL: "select cust_code,code_name from cust_code where code_type='Payment' order by cust_code" }
        })
        .then(function successCallback(response) {
            $scope.optPayType = response.data;
        }, function errorCallback() {
            alert("err-getPayTypeOpt");
            $scope.Message = "An Error has occured while loading posts!";
        });
    }

    getCountryOpt();
    getConCodeOpt();
    getDisTypeOpt();
    getPayTypeOpt();
    $scope.selectCust('N', 1624);
});

