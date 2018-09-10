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
                dateFormat: "yy/mm/dd",
                monthNamesShort: [ "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"],          
                dayNamesMin: [ "日", "一", "二", "三", "四", "五", "六" ],
                closeText: "X",//Done按鈕的文字
                appendText: "(yyyy/mm/dd)",//文字提示
                showOtherMonths: true,//顯示上月/下月日期
                selectOtherMonths: true,//可選擇上月/下月日期
                showButtonPanel :true,//顯示按鈕
                currentText: "Today",//Now的按鈕文字
                changeMonth: true,//下拉月份
                changeYear: true,//下拉月份
                //dateFormat: attrs.jqDatepicker || 'yy/mm/dd',//'yy/mm/dd',
                onSelect: function (date) {
                    console.log("sel="+date);
                    var ar = date.split("/");
                    //date = new Date(ar[2], ar[0] - 1, ar[1]);//m,d,y
                    date = new Date(ar[0], ar[1] - 1, ar[2]);//y,m,d
                    ngModelCtrl.$setViewValue("/Date(" + date.getTime() + ")/");
                    scope.$apply();
                }
            });
           
            scope.$watch('Cust.con_term', function () {
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