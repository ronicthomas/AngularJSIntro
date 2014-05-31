<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="main"/>
    <title>Dashboard</title>
</head>

<body>
<div id="page-wrapper">

    <div class="form-group has-success" >
        <label class="control-label" for="inputSuccess">What's your name?</label>
        {{ name }}
        <input type="text" class="form-control" id="inputSuccess" ng-model="name" data-ng-init="name = 'Roni'">
    </div>


    Hello, {{ name }}

</div><!-- /#page-wrapper -->

</body>
</html>
