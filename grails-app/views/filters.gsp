<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="demo"/>
    <title>Dashboard</title>
</head>

<body>
<div id="page-wrapper" ng-view>

</div>
<script type="text/javascript">
    var app = angular.module('demo', ['ngRoute']);

    app.config(function ($routeProvider) {
        $routeProvider
                .when('/', {redirectTo: '/sample'})
                .when('/sample', {templateUrl: '/partials/filter.html', controller: SampleCtrl})
                .otherwise('/')
    });

    app.filter('dateFormat', function ($http) {
        return function (date, format, noSeconds) {
//
            var chars = text.split("");
            var retString = "";
            for (var idx in chars) {
                if (idx % 2) {
                    retString += chars[idx].toUpperCase()
                } else {
                    retString += chars[idx].toLowerCase()
                }
            }
            console.log(text, retString);
            return retString
        }
    });

    function SampleCtrl($scope) {
        $scope.numbers = [
            {name: 'john doe', phone: '555-1276'},
            {name: 'mar kom', phone: '800-BIG-MARY'},
            {name: 'mike tyson', phone: '555-4321'},
            {name: 'adam and eve', phone: '555-5678'},
            {name: 'julie juliette', phone: '555-8765'},
            {name: 'juliette gonzalves', phone: '555-5678'}
        ];

    }
</script>
</body>
</html>
