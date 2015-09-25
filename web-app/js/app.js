var myApp = angular.module("myApp", []);

myApp.controller("TodoController", ["$scope", "$http", function ($scope, $http) {
    $scope.username = "Ajey PS";

    $http.get('/api/todo.json').success(function (data) {
        $scope.todos = data;
        console.log(data);
    });

    $scope.addTodo = function () {
        $http.post('/api/todo', {"task": $scope.newTodo}).success(
            function (data) {
                $scope.todos.push(data);
            })
    };

    $scope.deleteTodo = function (val, index) {
        $http.delete('/api/todo/' + val + '.json').success(
            function () {
                $scope.todos.splice(index, 1);
            })
    };

    $scope.updateTodo = function (val, isChecked) {
        $http.put('/api/todo/', {completed: isChecked}).success(
            function () {
                console.log('updated');
//                $scope.todos.splice(index, 1);
            })
    };
}]);

myApp.directive('randomColor', function () {
    return{
        restrict: 'A',
        link: function (scope, element) {
            var colors = ['white', 'cyan', 'yellow', 'orange'];
            element.css('background-color', colors[Math.floor(Math.random() * 3) + 1]);
        }
    }
});

myApp.directive('todoList', function () {
    return{
        restrict: 'E',
        templateUrl: 'partials/todos.html'
    }
});

myApp.directive('createTodo', function () {
    return{
        restrict: 'E',
        templateUrl: 'partials/createTodo.html'
    }
});

myApp.directive("superpower", function () {
    return{
        restrict: "E",
        scope: {},
        controller: function ($scope) {
            $scope.abilities = [];

            this.addStrength = function () {
                $scope.abilities.push("strength");
            };
            this.addSpeed = function () {
                $scope.abilities.push("speed");
            };
            this.addAwesomeness = function () {
                $scope.abilities.push("awesomeness");
            };
        },
        link: function (scope, element) {
            element.addClass('btn');
            element.bind("mouseenter", function () {
                console.log(scope.abilities);
            });
        }
    }
});

myApp.directive("strength", function () {
    return{
        require: "superpower",
        link: function (scope, element, attrs, superpowerCtrl) {
            element.bind("mouseenter", function () {
                superpowerCtrl.addStrength();
            });
        }
    }
});

myApp.directive("awesomeness", function () {
    return{
        require: "superpower",
        link: function (scope, element, attrs, superpowerCtrl) {
            superpowerCtrl.addAwesomeness();
        }
    }
});

myApp.directive("speed", function () {
    return{
        require: "superpower",
        link: function (scope, element, attrs, superpowerCtrl) {
            superpowerCtrl.addSpeed();
        }
    }
});