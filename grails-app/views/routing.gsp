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
    var angularApp = angular.module('demo', ['ngRoute']);

    angularApp.config(function ($routeProvider) {
        $routeProvider
                .when('/', {redirectTo: '/sample'})
                .when('/sample', {templateUrl: '/partials/sample-view.html'})
                .when('/sample-1')
                .otherwise('/')  // 404 clause
    });





</script>
</body>
</html>
