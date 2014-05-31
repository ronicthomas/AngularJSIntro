<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="demo"/>
    <title>Dashboard</title>
</head>

<body>
<div id="page-wrapper">

    <DIV DATA-NG-CONTROLLER="GreetingCtrl"><div class="form-group has-success">
        <label>What are you thinking?</label>
        <textarea class="form-control" rows="3" data-ng-model="msg"></textarea>

    </div>

        <div data-ng-if="msg">
            {{ getGreeting() }}
        </div>
    </DIV>

    <DIV DATA-NG-CONTROLLER="FbpostCtrl"><div class="form-group has-success">
        <label>What are you thinking?</label>
        <textarea class="form-control" rows="3" data-ng-model="msg"></textarea>

    </div>

        <div data-ng-if="msg">
            {{ msg }}
        </div>
    </DIV>

    %{--<div class="form-group">
        <label>Static Control</label>

        <p class="form-control-static">email@example.com</p>
    </div>--}%


    <script type="text/javascript">
        function GreetingCtrl($scope) {
            $scope.msg = "Think like the customer does. And you'll feel the pain.";
//            $scope.currentLocation = $location

            $scope.getGreeting = function() {
                return $scope.msg.replace(/customer/g, '')
            }
        }

        function FbpostCtrl($scope) {
            $scope.msg = "Hello world"
        }
    </script>
</div>
<input type="text" ng-model="msg"/>

<div>{{ msg  }}</div>

</body>
</html>
