app.filter('myFilter', function () {
    return function (input) {
        if (input !=null && input !="") {
            return '(' + input + ')';
        } else {
            return input;
        }
    }
});

app.filter('myFormat', function () {
    return function (input) {
        if (input != null && input != "") {
            return new Date(parseInt(input.substr(6)));
            //return eval(input.replace(/\/Date\((.*?)\)\//gi, "new Date($1)"));
            //return new Date(parseInt(input.replace("/Date(", "").replace(")/", ""), 10));
        } else {
            return input;
        }
    }
});

app.filter("mydate", function () {
    var re = /\/Date\(([0-9]*)\)\//;
    return function (input) {
        if (input != null && input != "") {
            console.log("zzz="+input);
            var m = input.match(re);
            if (m) return new Date(parseInt(m[1]));
            else return input;
        } else {
            return input;
        }
    };
});