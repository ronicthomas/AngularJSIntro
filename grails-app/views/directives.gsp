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
                .when('/sample', {templateUrl: '/partials/directive.html', controller: SampleCtrl})
                .otherwise('/')
    });

    app.directive('randomColor', function () {
        return  {
            link: function (scope, element) {
                var colors = ['red', 'green', 'blue'];
                element.css('background-color',
                        colors[Math.floor((Math.random() * 3))]);
            }
        }
    });

    app.directive('runAway', function () {
        return {
            link: function (scope, element) {
                element.on('mouseover', function () {
                    element.css('position', 'relative');
                    element.css('top', Math.floor((Math.random() * 100) + 1));
                    element.css('left', Math.floor((Math.random() * 500) + 1));
                })

            }
        }
    });

    app.directive('displayNumber', function () {
        return {
            restrict: 'C',
            templateUrl: '/partials/displayNumber.html'
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
