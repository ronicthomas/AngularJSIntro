<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="layout" content="main"/>
    <title>Dashboard</title>
    <style>
        .strikethrough  {text-decoration: line-through}
    </style>
</head>

<body>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1> "username" TODO's
                <small>A Blank Slate</small>
            </h1>
        </div>
    </div>


    <div class="row">
        <div class="col-lg-6">
            <form name="createTodo">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">I need to...</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <input name="task" class="form-control" placeholder="Enter text" >
                        </div>
                        <input type="submit" class="btn btn-success" value="Create"/>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-lg-6">
            <ul class="list-group">
                <li class="list-group-item">
                    <span style="float: right"><input type="checkbox" /></span>
                    <span style="float:right; margin-right:10px">
                        <input type="button" value="DELETE" class="btn btn-xs btn-danger" >
                    </span>
                </li>
            </ul>
        </div>
    </div>
</div><!-- /#page-wrapper -->

</body>
</html>
