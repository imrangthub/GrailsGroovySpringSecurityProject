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
    <title>Post |  create</title>

</head>

<body>

<div class="container">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <!-- Example row of columns -->
    <div class="row">
        <div class="row" id="create-form-holder">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        Create post
                    </header>
                    <div class="panel-body">
                        <div class="col-md-8 col-md-offset-1">
                            <g:form name="myForm" method="post" action="savePost">
                                <g:hiddenField name="id"/>
                                <div class="row">
                                    <div class="form-group">
                                        <label for="title" class="col-sm-4 control-label">Post Title *</label>

                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" name="title"  id="title"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="body" class="col-sm-4 control-label">Post Body</label>
                                        <div class="col-sm-8">
                                            <textarea id="body" name="body" class="form-control"></textarea>
                                        </div>
                                    </div>

                                </div>
                                <br>
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-md-8 col-md-offset-8">
                                            <button class="btn btn-default cancel-btn" tabindex="3" type="reset">Cancel</button>
                                            <button class="btn btn-primary" tabindex="2" type="submit">Save</button>
                                        </div>
                                    </div>
                                </div>
                            </g:form>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

</div> <!-- /container -->


<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</body>
</html>
