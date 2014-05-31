<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="demo"/>
    <title>Dashboard</title>
</head>

<body>
<div id="page-wrapper">

    <div class="form-group has-success">
        <label>What are you thinking?</label>
        <textarea class="form-control" rows="3" data-ng-model="msg"></textarea>

    </div>

    <div data-ng-if="msg">
        {{ msg }}
    </div>

</div>

</body>
</html>
