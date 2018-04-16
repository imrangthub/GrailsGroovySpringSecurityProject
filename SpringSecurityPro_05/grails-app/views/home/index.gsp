<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Blog | HOME</title>

</head>
    <div id="content" role="main">
        <section class="row colset-2-its">

<div class="row">
<div class="col-md-offset-2 col-md-8">
<h1 class="text-center" style="margin-bottom: 50px">Welcome to Blog</h1>
    <div class="row">
        <div class="col-md-12">
          <g:each in="${postList}" var="post" status="i">
             <div class="col-md-4">
                 <label>${post.title}</label>
                  <p>
                      ${post.body}
                  </p>
              </div>
          </g:each>
        </div>
    </div>

</div>
</div>

</section>
</div>

</body>
</html>
