app.directive('jqDatepicker', function ($filter) {
    return {
        restrict: 'A',
        require: 'ngModel',
        link: function (scope, element, attrs, ngModelCtrl) {
            var agFormat = attrs.jqDatepicker;
            agFormat = agFormat.replace("yy", "yyyy");
            if ((agFormat.split("M").length - 1) == 2)
                agFormat = agFormat.replace("MM", "MMMM");
            else if ((agFormat.split("M").length - 1) == 1)
                agFormat = agFormat.replace("M", "MMM");
            else if ((agFormat.split("m").length - 1) == 2)
                agFormat = agFormat.replace("mm", "MM");
            else if ((agFormat.split("m").length - 1) == 1)
                agFormat = agFormat.replace("m", "M");


            element.datepicker({
                //dateFormat: attrs.jqDatepicker || 'yy/mm/dd',//'yy/mm/dd',
                onSelect: function (date) {
                    console.log("sel="+date);
                    var ar = date.split("/");
                    date = new Date(ar[2], ar[0]-1, ar[1]);
                    ngModelCtrl.$setViewValue("/Date(" + date.getTime() + ")/");
                    scope.$apply();
                }
            });
           
            scope.$watch('Cust.con_term', function () {
                //$scope.name = $scope.name.toLowerCase().replace(/\s+/g, '');
                //var agFormat = attrs.jqdatepicker.replace("yy", "yyyy").replace("MM", "MMMM").replace("MM", "MMMM")
                scope.Cust.con_term = $filter('date')($filter('mydate')(scope.Cust.con_term), 'yyyy/MM/dd'); //'yyyy/MM/dd'
            });
            
            /*
            ngModelCtrl.$formatters.unshift(function (v) {
                //v = $filter('mydate')(v);
                //scope.Cust.con_term = v;
                return $filter('date')($filter('mydate')(v), 'yyyy/MM/dd');
            });
            */
        }
    };
});