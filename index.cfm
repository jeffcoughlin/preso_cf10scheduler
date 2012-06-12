<cfsetting enablecfoutputonly="true" />

<cfparam name="url.file" default="home" />

<cfoutput>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>CF10 Scheduler Enhancements</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le styles -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="assets/css/docs.css" rel="stylesheet">
    <link href="assets/css/custom.css" rel="stylesheet">
		
		<!-- Javascript -->
    <script src="assets/js/jquery-1.7.2.min.js"></script>
		<script src="assets/js/jquery-ui.min.js"></script>
    <script src="assets/js/jquery.wijmo-complete.all.2.0.8.min.js" type="text/javascript"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/application.js"></script>
  </head>

  <body data-spy="scroll" data-target=".subnav" data-offset="50">

  <!-- Navbar
    ================================================== -->
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="index.cfm">CF 10 Scheduler</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li><a href="index.cfm">Home</a></li>
              <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="##">Demos <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li<cfif url.file eq "resetdemos"> class="active"</cfif>><a href="index.cfm?file=resetdemos"><i class="icon-share-alt<cfif url.file eq "resetdemos"> icon-white</cfif>"></i>&nbsp;&nbsp;Reset Demos</a></li>
                  <li class="divider"></li>
                  <li<cfif url.file eq "demo1"> class="active"</cfif>><a href="index.cfm?file=demo1"><i class="icon-chevron-right<cfif url.file eq "demo1"> icon-white</cfif>"></i>&nbsp;&nbsp;Demo 1 - (Simple demo 1)</a></li>
                  <li<cfif url.file eq "demo2"> class="active"</cfif>><a href="index.cfm?file=demo2"><i class="icon-chevron-right<cfif url.file eq "demo2"> icon-white</cfif>"></i>&nbsp;&nbsp;Demo 2 - (Simple demo 2)</a></li>
                  <li<cfif url.file eq "demo3"> class="active"</cfif>><a href="index.cfm?file=demo3"><i class="icon-share<cfif url.file eq "demo3"> icon-white</cfif>"></i>&nbsp;&nbsp;Demo 3 - (Grouping)</a></li>
                  <li<cfif url.file eq "demo4"> class="active"</cfif>><a href="index.cfm?file=demo4"><i class="icon-retweet<cfif url.file eq "demo4"> icon-white</cfif>"></i>&nbsp;&nbsp;Demo 4 - (Chaining)</a></li>
                  <li<cfif url.file eq "demo5"> class="active"</cfif>><a href="index.cfm?file=demo5"><i class="icon-th-list<cfif url.file eq "demo5"> icon-white</cfif>"></i>&nbsp;&nbsp;Demo 5 - (List tasks)</a></li>
                  <li<cfif url.file eq "demo6"> class="active"</cfif>><a href="index.cfm?file=demo6"><i class="icon-calendar<cfif url.file eq "demo6"> icon-white</cfif>"></i>&nbsp;&nbsp;Demo 6 - (Event Handling)</a></li>
                  <li<cfif url.file eq "demo7"> class="active"</cfif>><a href="index.cfm?file=demo7"><i class="icon-hdd<cfif url.file eq "demo7"> icon-white</cfif>"></i>&nbsp;&nbsp;Demo 7 - (Use Case - CPU Load)</a></li>
                </ul>
              </li>
              <li class="divider-vertical"></li>
              <li<cfif url.file eq "resetdemos"> class="active"</cfif>><a href="index.cfm?file=resetdemos&reinit=1"><i class="icon-share-alt icon-white"></i> Reset Demos</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="container">

      <cfinclude template="demos/#url.file#.cfm" />

    </div><!-- /container -->

  </body>
</html>
</cfoutput>

<cfsetting enablecfoutputonly="false" />