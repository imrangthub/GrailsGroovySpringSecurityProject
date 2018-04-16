<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
    <g:layoutHead/>
</head>
<body>

<div class="navbar navbar-default navbar-static-top" role="navigation">
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand active" href="${createLink(controller: 'home', action: 'index')}">HOME</a>
                <sec:ifLoggedIn>
                    <a class="navbar-brand active" href="${createLink(controller: 'user', action: 'dashboard')}">User Manage</a>
                </sec:ifLoggedIn>
                <sec:ifLoggedIn>
                    <a class="navbar-brand active" href="${createLink(controller: 'post', action: 'index')}">Post Manage</a>
                </sec:ifLoggedIn>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <sec:ifLoggedIn>
                        <li class="controller"><g:link controller="user" action="dashboard">User: <sec:username/></g:link></li>
                    </sec:ifLoggedIn>
                    <sec:ifLoggedIn>
                        <li class="controller"><g:link controller="logout" action="index">Logout</g:link></li>
                    </sec:ifLoggedIn>
                    <sec:ifNotLoggedIn>
                        <li class="controller"><g:link controller="login" action="index">Login</g:link></li>
                    </sec:ifNotLoggedIn>

                </ul>
            </div><!--/.navbar-collapse -->
        </div>
    </nav>
</div>

<g:layoutBody/>

<div class="footer" role="contentinfo"></div>

</body>
</html>
