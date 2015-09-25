<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="main"/>
    <g:javascript src="angular.min.js"/>
    <g:javascript src="angular-ui-router.js"/>
    <g:javascript src="app.js"/>
    <title>Dashboard</title>
    <style>
    .strikethrough {
        text-decoration: line-through
    }

    .ng-submitted input.ng-invalid.ng-invalid-required {
        border: 1px solid red;
    }
    </style>
</head>

<body>
<div id="page-wrapper" ng-controller="TodoController">
    <div class="row">
        <div class="col-lg-12">
            <h1>{{username}} TODO's
                <small>A Blank Slate</small>
            </h1>
        </div>
    </div>


    <div class="row">
        <create-todo></create-todo>

        <todo-list></todo-list>
    </div>
</div><!-- /#page-wrapper -->
</body>
</html>
