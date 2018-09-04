app.filter('myFilter', function () {
    return function (input) {
        if (input !=null && input !="") {
            return '(' + input + ')';
        } else {
            return input;
        }
    }
});

