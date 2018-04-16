<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <meta name="layout" content="main"/>
    <title>Post |  List</title>

    <style>
    .login-form-container {
        margin-top: 200px;
    }
    </style>


</head>

<body>

<div class="container">
    <!-- Example row of columns -->
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div class="row">
        <div class="col-md-8 pull-right col-md-offset-2">
            <p class="lead">
                <a class="btn btn-primary btn-lg " href="${createLink(controller:'post', action: 'create')}" role="button">Create post</a>
            </p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8">
            <h4>Current post list</h4>
            <table class="table table-hover">
                <tr>
                    <td>Serial</td><td>Post Title</td><td>Post Body</td><td>Action</td>
                </tr>
                <g:each in="${postList}" var="post" status="i">
                    <tr>
                        <td>${i++}</td><td>${post.title}</td><td>${post.body}</td><td>
                        <g:link action="delete" id="${post.id}">Delete</g:link>
                    </td>
                    </tr>
                </g:each>
            </table>
        </div>
    </div>

</div> <!-- /container -->


<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</body>
</html>
