var angularApp = angular.module("todo", ['ngRoute']);

angularApp.config(function ($routeProvider) {
    $routeProvider
        .otherwise("/todo")
        .when('/', {redirectTo: '/todo/'})
        .when('/todo/', {templateUrl: '/partials/todo.html', controller: TodoCtrl})
        .when('/info/', {templateUrl: '/partials/info.html', controller: UserController})
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

angularApp.service('TodoService', function ($q, $http, $rootScope) {
    // Defining Service function: getUsers which will load user list
    $rootScope.currentUser = "Roni"
    this.currentUser = "Roni";
    this.list = function (url) {
        var deferred = $q.defer();
        $http.post(url, {}).success(function (data) {
            deferred.resolve(data)
        });
        return deferred.promise;
    };
});

function TodoCtrl($scope, $http, TodoService) {
    $scope.todo = {};
    $scope.todos = [];
    $scope.currentUser = TodoService.currentUser;

    TodoService.list('/todo/list').then(function (data) {
        $scope.todos = data
    });

    $scope.create = function (form) {
        if (form.$valid) {
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

function UserController($scope, TodoService) {
    $scope.loggedInUser = TodoService.currentUser
}
