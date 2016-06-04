<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle />
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="bootstrap.css"/>
    <g:layoutHead/>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Falcon</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="/box">Boxes</a></li>
        <li><a href="/item">Items</a></li>
      </ul>
      
      
       <g:form controller="search" action="index" method="GET" class="navbar-form navbar-left">
	        <div class="form-group">
	            <g:textField name="query" value="${params.query}" placeholder="Search" class="form-control" />
	        </div>
           <button type="submit" class="btn btn-default">Search</button>
	    </g:form>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


    <g:layoutBody/>
</body>
</html>
