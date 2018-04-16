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
    <title>User| Dashboard</title>

</head>

<body>
<!-- Main jumbotron for a primary marketing message or call to action -->


<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h4 class="text-center">Current User List</h4>
            <div class="pull-left">
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="${createLink(controller: 'user', action: 'create')}" role="button">Add new User</a>
                <a class="btn btn-primary" href="${createLink(controller:'post', action: 'index')}" role="button">Manage post</a>
            </div>
            <br/>
            <div style="margin-top: 40px;">
                <table class="table table-hover" id="list-table">
                    <tr>
                        <td>Serial</td><td>Name</td><td>Admin type</td><td>Action</td>
                    </tr>
                    <g:each in="${userList}" var="user" status="i">
                        <tr>
                            <td>${i}</td>
                            <td>${user.fullname}</td>
                            <td>${user.mainUserType}</td>
                            <td>
                                <a href="${createLink(controller: 'user', action: 'activeUser')}?id=${user.id}" class="active-reference btn btn-success" title="Active User" role="button">Active</a>
                                <a href="${createLink(controller: 'user', action: 'disabledUser')}?id=${user.id}" class="active-reference btn btn-warning" title="Disable User" role="button">Disable</a>
                                <a href="${createLink(controller: 'user', action: 'delete')}?id=${user.id}" class="active-reference btn btn-danger" title="Disable User" role="button">Delete</a>
                            </td>
                        </tr>
                    </g:each>
                </table>
            </div>
        </div>
    </div>



</div> <!-- /container -->


<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script>
    %{--jQuery(function($){--}%

        %{--$('#list-table').on('click', 'a.active-reference', function(e){--}%
            %{--var control = this;--}%
            %{--var referenceId = $(control).attr('referenceId');--}%
            %{--jQuery.ajax({--}%
                %{--type:'POST',--}%
                %{--dataType: 'JSON',--}%
                %{--url: "${g.createLink(controller: 'user', action: 'activeUser')}?id="+referenceId,--}%

            %{--});--}%
        %{--});--}%

        %{--$('#list-table').on('click', 'a.disable-reference',function(e){--}%
            %{--var control = this;--}%
            %{--var referenceId = $(control).attr('referenceId');--}%
            %{--jQuery.ajax({--}%
                %{--type: 'POST',--}%
                %{--dataType: 'JSON',--}%
                %{--url: "${g.createLink(controller: 'user', action: 'disabledUser')}?id="+referenceId,--}%

            %{--});--}%
        %{--});--}%
        %{--$('#list-table').on('click', 'a.delete-reference',function(e){--}%
            %{--var control = this;--}%
            %{--var referenceId = $(control).attr('referenceId');--}%
            %{--jQuery.ajax({--}%
                %{--type: 'POST',--}%
                %{--dataType: 'JSON',--}%
                %{--url: "${g.createLink(controller: 'user', action: 'delete')}?id="+referenceId,--}%

            %{--});--}%
        %{--});--}%

    %{--});--}%
</script>
</body>
</html>
