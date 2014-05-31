var angularApp = angular.module("todo", ['ngRoute']);

angularApp.config(function ($routeProvider) {
    $routeProvider
        .otherwise("/todo")
        .when('/', {redirectTo: '/todo/'})
        .when('/todo/', {templateUrl: '/partials/todo.html', controller: TodoCtrl})
});

angularApp.filter('properCase', function () {
    return function (input) {
        var substrings = input.split(" ");
        for (var idx in substrings) {
            if (idx == 0) {
                substrings[idx] = substrings[idx].charAt(0).toUpperCase() + substrings[idx].substring(2).toLowerCase()
            } else {
                substrings[idx] = substrings[idx].toLowerCase()
            }
        }

        return substrings.join(" ")
    }
});

function TodoCtrl($scope, $http) {
    $scope.todo = {};
    $scope.todos = [];

    $http.get('/todo/list').success(function (data) {
        $scope.todos = data;
    });

    $scope.create = function (form) {
        if (form.$valid) {
            console.log($scope.todo);
            $http.post('/todo/create', $scope.todo).success(function (data) {
                $scope.todos.push($scope.todo);
                $scope.todo = {};
                form.$dirty = false;
            })
        } else {
            form.$dirty = true
        }
    };

    $scope.remove = function (todo, idx) {
        $http.post('/todo/delete', {id: todo.id}).success(function (data) {
            $scope.todos.splice(idx, 1);
        })
    };

    $scope.toggleDone = function (todo, idx) {
        $http.post('/todo/toggleComplete', {id: todo.id, completed: !todo.completed}).success(function (data) {
            $scope.todos[idx] = data;
        });
    };
}