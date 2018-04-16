<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>

</head>

    <div id="content" role="main">
        <section class="row colset-2-its">
<div class="row">
<div class="col-md-offset-2 col-md-8">

            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
    <li class="controller">
        <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
    </li>
</g:each>
</ul>
</div>
</div>

</div>

        </section>
    </div>

</body>
</html>
